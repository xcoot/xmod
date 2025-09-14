.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IInstalld;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_cleanupInvalidPackageDirs:I = 0x31

.field static final TRANSACTION_clearAppData:I = 0x9

.field static final TRANSACTION_clearAppProfiles:I = 0x19

.field static final TRANSACTION_compressFile:I = 0x46

.field static final TRANSACTION_controlDexOptBlocking:I = 0x14

.field static final TRANSACTION_copyKnoxAppData:I = 0x36

.field static final TRANSACTION_copyKnoxCancel:I = 0x38

.field static final TRANSACTION_copyKnoxChunks:I = 0x37

.field static final TRANSACTION_copySystemProfile:I = 0x18

.field static final TRANSACTION_createAppData:I = 0x4

.field static final TRANSACTION_createAppDataBatched:I = 0x5

.field static final TRANSACTION_createEncAppData:I = 0x3c

.field static final TRANSACTION_createFsveritySetupAuthToken:I = 0x34

.field static final TRANSACTION_createOatDir:I = 0x21

.field static final TRANSACTION_createProfileSnapshot:I = 0x1c

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteKnoxFile:I = 0x3b

.field static final TRANSACTION_deleteOdex:I = 0x24

.field static final TRANSACTION_deleteReferenceProfile:I = 0x1b

.field static final TRANSACTION_destroyAppData:I = 0xa

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2c

.field static final TRANSACTION_destroyAppProfiles:I = 0x1a

.field static final TRANSACTION_destroyCeSnapshotsNotSpecified:I = 0x2d

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x1d

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0x13

.field static final TRANSACTION_dumpProfiles:I = 0x17

.field static final TRANSACTION_enableFsverity:I = 0x35

.field static final TRANSACTION_fixupAppData:I = 0xb

.field static final TRANSACTION_freeCache:I = 0x1f

.field static final TRANSACTION_getAppCrates:I = 0xf

.field static final TRANSACTION_getAppSize:I = 0xc

.field static final TRANSACTION_getCompressedStats:I = 0x47

.field static final TRANSACTION_getDualDARLockstate:I = 0x45

.field static final TRANSACTION_getExternalSize:I = 0xe

.field static final TRANSACTION_getKnoxFileInfo:I = 0x39

.field static final TRANSACTION_getKnoxScanDir:I = 0x3a

.field static final TRANSACTION_getOdexVisibility:I = 0x32

.field static final TRANSACTION_getUserCrates:I = 0x10

.field static final TRANSACTION_getUserSize:I = 0xd

.field static final TRANSACTION_hasDualDARPolicy:I = 0x43

.field static final TRANSACTION_hasDualDARPolicyRecursively:I = 0x44

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x26

.field static final TRANSACTION_invalidateMounts:I = 0x27

.field static final TRANSACTION_isQuotaSupported:I = 0x28

.field static final TRANSACTION_linkFile:I = 0x22

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x20

.field static final TRANSACTION_mergeProfiles:I = 0x16

.field static final TRANSACTION_migrateAppData:I = 0x8

.field static final TRANSACTION_migrateLegacyObbData:I = 0x30

.field static final TRANSACTION_migrateSdpDb:I = 0x3f

.field static final TRANSACTION_moveAb:I = 0x23

.field static final TRANSACTION_moveCompleteApp:I = 0x12

.field static final TRANSACTION_onPrivateVolumeRemoved:I = 0x2f

.field static final TRANSACTION_prepareAppProfile:I = 0x29

.field static final TRANSACTION_reconcileSdkData:I = 0x6

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x25

.field static final TRANSACTION_removeEncPkgDir:I = 0x3d

.field static final TRANSACTION_removeEncUserDir:I = 0x3e

.field static final TRANSACTION_removeNotTargetedPreloadApksIfNeeded:I = 0x33

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_restoreconAppData:I = 0x7

.field static final TRANSACTION_rmPackageDir:I = 0x1e

.field static final TRANSACTION_rmdex:I = 0x15

.field static final TRANSACTION_scanApkStats:I = 0x48

.field static final TRANSACTION_setAppQuota:I = 0x11

.field static final TRANSACTION_setDualDARPolicyDir:I = 0x41

.field static final TRANSACTION_setDualDARPolicyDirRecursively:I = 0x42

.field static final TRANSACTION_setEviction:I = 0x40

.field static final TRANSACTION_setFirstBoot:I = 0x3

.field static final TRANSACTION_snapshotAppData:I = 0x2a

.field static final TRANSACTION_tryMountDataMirror:I = 0x2e


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.os.IInstalld"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IInstalld"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/os/IInstalld;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/os/IInstalld;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 27
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    move-object/from16 v15, p2

    .line 7
    move-object/from16 v14, p3

    .line 9
    const-string v2, "android.os.IInstalld"

    .line 11
    const/4 v13, 0x1

    .line 12
    if-lt v1, v13, :cond_0

    .line 14
    const v3, 0xffffff

    .line 17
    if-gt v1, v3, :cond_0

    .line 19
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 22
    :cond_0
    const v3, 0x5f4e5446

    .line 25
    if-ne v1, v3, :cond_1

    .line 27
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    return v13

    .line 31
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 34
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 46
    move-result v2

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 50
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V

    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    :goto_0
    move v9, v13

    .line 57
    goto/16 :goto_3

    .line 59
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    move-result v2

    .line 67
    if-gez v2, :cond_2

    .line 69
    const/4 v2, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-array v2, v2, [J

    .line 73
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 76
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    .line 79
    move-result v0

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 86
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 89
    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 97
    move-result v2

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V

    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    goto :goto_0

    .line 108
    :pswitch_3
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->getDualDARLockstate()Z

    .line 111
    move-result v0

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 118
    goto :goto_0

    .line 119
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    .line 125
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 131
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    .line 134
    move-result v0

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 141
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 144
    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 148
    move-result-object v1

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 152
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->hasDualDARPolicy(Ljava/lang/String;)Z

    .line 155
    move-result v0

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 162
    goto :goto_0

    .line 163
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 166
    move-result v1

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 170
    move-result v2

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 174
    move-result-object v3

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    .line 181
    move-result v0

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 193
    move-result v1

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 197
    move-result v2

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 201
    move-result-object v3

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDir(IILjava/lang/String;)Z

    .line 208
    move-result v0

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 215
    goto/16 :goto_0

    .line 217
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 220
    move-result v1

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 224
    move-result v2

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->setEviction(IZ)Z

    .line 231
    move-result v0

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 238
    goto/16 :goto_0

    .line 240
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 247
    move-result v2

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 251
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->migrateSdpDb(Ljava/lang/String;I)Z

    .line 254
    move-result v0

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 261
    goto/16 :goto_0

    .line 263
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 266
    move-result v1

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 270
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->removeEncUserDir(I)Z

    .line 273
    move-result v0

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    goto/16 :goto_0

    .line 282
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 285
    move-result v1

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 289
    move-result-object v2

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->removeEncPkgDir(ILjava/lang/String;)Z

    .line 296
    move-result v0

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 303
    goto/16 :goto_0

    .line 305
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 308
    move-result-object v1

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 312
    move-result v2

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 316
    move-result v3

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 320
    move-result v4

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createEncAppData(Ljava/lang/String;III)Z

    .line 327
    move-result v0

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 334
    goto/16 :goto_0

    .line 336
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    .line 346
    move-result v0

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto/16 :goto_0

    .line 355
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 358
    move-result-object v1

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 362
    move-result-wide v2

    .line 363
    new-instance v4, Ljava/util/ArrayList;

    .line 365
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    .line 374
    move-result v0

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 384
    goto/16 :goto_0

    .line 386
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 389
    move-result-object v1

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    .line 396
    move-result-object v0

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 403
    goto/16 :goto_0

    .line 405
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 408
    move-result-object v1

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 412
    move-result-wide v2

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    .line 419
    move-result v0

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 426
    goto/16 :goto_0

    .line 428
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 431
    move-result-object v1

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 435
    move-result v2

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 439
    move-result-object v3

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 443
    move-result v4

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 447
    move-result v5

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 451
    move-result-wide v6

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 455
    move-result-wide v8

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 459
    move-result-wide v10

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 463
    move-object/from16 v0, p0

    .line 465
    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    .line 468
    move-result v0

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    goto/16 :goto_0

    .line 477
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 480
    move-result-object v1

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 484
    move-result v2

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 488
    move-result-object v3

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 492
    move-result v4

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 496
    move-result v5

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    move-object/from16 v0, p0

    .line 502
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    .line 505
    move-result v0

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 512
    goto/16 :goto_0

    .line 514
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 517
    move-result-object v1

    .line 518
    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 521
    move-result-object v1

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 525
    move-result-object v2

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 529
    move-result-object v3

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-result v0

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    goto/16 :goto_0

    .line 545
    :pswitch_14
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 547
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 556
    move-result v2

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 563
    move-result-object v0

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 570
    goto/16 :goto_0

    .line 572
    :pswitch_15
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z

    .line 575
    move-result v0

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 582
    goto/16 :goto_0

    .line 584
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 587
    move-result-object v1

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 591
    move-result-object v2

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 595
    move-result-object v3

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 599
    move-result-object v4

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    move-result v0

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    goto/16 :goto_0

    .line 615
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 618
    move-result-object v1

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 622
    move-result v2

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 626
    move-result v3

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 638
    :pswitch_18
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 644
    goto/16 :goto_0

    .line 646
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 649
    move-result-object v1

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 653
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_0

    .line 661
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 664
    move-result-object v1

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 674
    goto/16 :goto_0

    .line 676
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 679
    move-result-object v1

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 683
    move-result v2

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 687
    move-result-object v3

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 691
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    goto/16 :goto_0

    .line 699
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 702
    move-result-object v1

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 706
    move-result-object v2

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 710
    move-result v3

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 714
    move-result-wide v4

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 718
    move-result v6

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 722
    move-result v7

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 726
    move-object/from16 v0, p0

    .line 728
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 734
    goto/16 :goto_0

    .line 736
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 739
    move-result-object v1

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 743
    move-result-object v2

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 747
    move-result v3

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 751
    move-result-object v4

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 755
    move-result v5

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 759
    move-result v6

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 763
    move-result v7

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    move-object/from16 v0, p0

    .line 769
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    goto/16 :goto_0

    .line 777
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 780
    move-result-object v1

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 784
    move-result-object v2

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 788
    move-result v3

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 792
    move-result v4

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 796
    move-result v5

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    move-object/from16 v0, p0

    .line 802
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    .line 805
    move-result-wide v0

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 809
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 812
    goto/16 :goto_0

    .line 814
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 817
    move-result-object v1

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 821
    move-result v2

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 825
    move-result v3

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 829
    move-result-object v4

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 833
    move-result-object v5

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 837
    move-result-object v6

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 841
    move-object/from16 v0, p0

    .line 843
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 846
    move-result v0

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 853
    goto/16 :goto_0

    .line 855
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 858
    move-result-object v1

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    .line 865
    move-result v0

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 872
    goto/16 :goto_0

    .line 874
    :pswitch_21
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    goto/16 :goto_0

    .line 882
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 885
    move-result-object v1

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 889
    move-result-object v2

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 893
    move-result v3

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 897
    move-result-object v4

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 901
    move-result v5

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    move-object/from16 v0, p0

    .line 907
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    .line 910
    move-result-object v0

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 917
    goto/16 :goto_0

    .line 919
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 922
    move-result-object v1

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 926
    move-result-object v2

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 930
    move-result v3

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 934
    move-result-object v4

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 938
    move-result-object v5

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 942
    move-result v6

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    move-object/from16 v0, p0

    .line 948
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    .line 951
    move-result v0

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 958
    goto/16 :goto_0

    .line 960
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 963
    move-result-object v1

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 967
    move-result-object v2

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 971
    move-result-object v3

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 975
    move-result-object v4

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 979
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 982
    move-result-wide v0

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 989
    goto/16 :goto_0

    .line 991
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 994
    move-result-object v1

    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 998
    move-result-object v2

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1002
    move-result-object v3

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1006
    move-result-object v4

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    goto/16 :goto_0

    .line 1018
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1021
    move-result-object v1

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1025
    move-result-object v2

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1033
    move-result-object v4

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_0

    .line 1045
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1048
    move-result-object v1

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1052
    move-result-object v2

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1056
    move-result-object v3

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1060
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    goto/16 :goto_0

    .line 1068
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1071
    move-result-object v1

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1075
    move-result-object v2

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1083
    move-result v4

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1093
    goto/16 :goto_0

    .line 1095
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1102
    move-result-wide v2

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1106
    move-result v4

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    goto/16 :goto_0

    .line 1118
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1121
    move-result-object v1

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    goto/16 :goto_0

    .line 1137
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1140
    move-result-object v1

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1144
    move-result-object v2

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1148
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    goto/16 :goto_0

    .line 1156
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1159
    move-result v1

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1163
    move-result-object v2

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1167
    move-result-object v3

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1171
    move-result-object v4

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1178
    move-result v0

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1185
    goto/16 :goto_0

    .line 1187
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1190
    move-result-object v1

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1194
    move-result-object v2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1198
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    goto/16 :goto_0

    .line 1206
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1209
    move-result-object v1

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_0

    .line 1221
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1224
    move-result-object v1

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1228
    move-result-object v2

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1232
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    goto/16 :goto_0

    .line 1240
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    move-result v2

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1251
    move-result-object v3

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1255
    move-result-object v4

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1259
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 1262
    move-result v0

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1266
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1269
    goto/16 :goto_0

    .line 1271
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1274
    move-result v1

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1278
    move-result-object v2

    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1282
    move-result-object v3

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1286
    move-result-object v4

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1290
    move-result v5

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    move-object/from16 v0, p0

    .line 1296
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1299
    move-result v0

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1306
    goto/16 :goto_0

    .line 1308
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1311
    move-result v1

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1315
    move-result-object v2

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1319
    move-result-object v3

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1323
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    .line 1326
    move-result v0

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1330
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    goto/16 :goto_0

    .line 1335
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1338
    move-result-object v1

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1342
    move-result-object v2

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1346
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1352
    goto/16 :goto_0

    .line 1354
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1357
    move-result v1

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1361
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    goto/16 :goto_0

    .line 1369
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1372
    move-result-object v1

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1376
    move-result v2

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1380
    move-result-object v3

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1384
    move-result-object v4

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1388
    move-result v5

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1392
    move-result-object v6

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1396
    move-result v7

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1400
    move-result-object v8

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1404
    move-result-object v9

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1408
    move-result-object v10

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1412
    move-result-object v11

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1416
    move-result v12

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1420
    move-result v16

    .line 1421
    move/from16 v13, v16

    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1426
    move-result-object v16

    .line 1427
    move-object/from16 v14, v16

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1432
    move-result-object v16

    .line 1433
    move-object/from16 v15, v16

    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1438
    move-result-object v16

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    move-object/from16 v0, p0

    .line 1444
    invoke-interface/range {v0 .. v16}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1447
    move-result v0

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1451
    move-object/from16 v8, p3

    .line 1453
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1456
    :goto_2
    const/4 v9, 0x1

    .line 1457
    goto/16 :goto_3

    .line 1459
    :pswitch_36
    move-object v8, v14

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1463
    move-result-object v1

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1467
    move-result-object v2

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1471
    move-result-object v3

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1475
    move-result v4

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1479
    move-result-object v5

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1483
    move-result v6

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1487
    move-result-object v7

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    move-object/from16 v0, p0

    .line 1493
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1499
    goto :goto_2

    .line 1500
    :pswitch_37
    move-object v8, v14

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1504
    move-result-object v1

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1508
    move-result v2

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1512
    move-result v3

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1516
    move-result-wide v4

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1520
    move-object/from16 v0, p0

    .line 1522
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    goto :goto_2

    .line 1529
    :pswitch_38
    move-object v8, v14

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1533
    move-result-object v1

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1537
    move-result v2

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1541
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    const/4 v9, 0x1

    .line 1549
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1552
    goto/16 :goto_3

    .line 1554
    :pswitch_39
    move v9, v13

    .line 1555
    move-object v8, v14

    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1559
    move-result-object v1

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1563
    move-result-object v2

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1567
    move-result v3

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1571
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 1574
    move-result-object v0

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1581
    goto/16 :goto_3

    .line 1583
    :pswitch_3a
    move v9, v13

    .line 1584
    move-object v8, v14

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1588
    move-result-object v1

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1592
    move-result v2

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1596
    move-result v3

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1600
    move-result-object v4

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1604
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    .line 1607
    move-result-object v0

    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1614
    goto/16 :goto_3

    .line 1616
    :pswitch_3b
    move v9, v13

    .line 1617
    move-object v8, v14

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1621
    move-result-object v1

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1625
    move-result v2

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1629
    move-result v3

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1633
    move-result-object v4

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1637
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    .line 1640
    move-result-object v0

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1644
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1647
    goto/16 :goto_3

    .line 1649
    :pswitch_3c
    move v9, v13

    .line 1650
    move-object v8, v14

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1654
    move-result-object v1

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1658
    move-result-object v2

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1662
    move-result v3

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1666
    move-result v4

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1670
    move-result v5

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    .line 1674
    move-result-object v6

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1678
    move-result-object v7

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1682
    move-object/from16 v0, p0

    .line 1684
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    .line 1687
    move-result-object v0

    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1691
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1694
    goto/16 :goto_3

    .line 1696
    :pswitch_3d
    move v9, v13

    .line 1697
    move-object v8, v14

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1701
    move-result-object v1

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1705
    move-result v2

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1709
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    goto/16 :goto_3

    .line 1717
    :pswitch_3e
    move v9, v13

    .line 1718
    move-object v8, v14

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1722
    move-result-object v1

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1726
    move-result-object v2

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1730
    move-result v3

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1734
    move-result v4

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1738
    move-result-wide v5

    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1742
    move-object/from16 v0, p0

    .line 1744
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    goto/16 :goto_3

    .line 1752
    :pswitch_3f
    move v9, v13

    .line 1753
    move-object v8, v14

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1757
    move-result-object v1

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1761
    move-result-object v2

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1765
    move-result v3

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1769
    move-result v4

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1773
    move-result-wide v5

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1777
    move-object/from16 v0, p0

    .line 1779
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    goto/16 :goto_3

    .line 1787
    :pswitch_40
    move v9, v13

    .line 1788
    move-object v8, v14

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1792
    move-result-object v1

    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1796
    move-result-object v2

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1800
    move-result v3

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1804
    move-result v4

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1808
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    goto/16 :goto_3

    .line 1816
    :pswitch_41
    move v9, v13

    .line 1817
    move-object v8, v14

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1821
    move-result-object v1

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1825
    move-result-object v2

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1829
    move-result v3

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1833
    move-result v4

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1837
    move-result v5

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1841
    move-result-object v6

    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1845
    move-object/from16 v0, p0

    .line 1847
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1853
    goto/16 :goto_3

    .line 1855
    :pswitch_42
    move v9, v13

    .line 1856
    move-object v8, v14

    .line 1857
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1859
    move-object/from16 v2, p2

    .line 1861
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1864
    move-result-object v1

    .line 1865
    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1870
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1876
    goto/16 :goto_3

    .line 1878
    :pswitch_43
    move v9, v13

    .line 1879
    move-object v8, v14

    .line 1880
    move-object v2, v15

    .line 1881
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1883
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1886
    move-result-object v1

    .line 1887
    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1892
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    .line 1895
    move-result-object v0

    .line 1896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1899
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1902
    goto :goto_3

    .line 1903
    :pswitch_44
    move v9, v13

    .line 1904
    move-object v8, v14

    .line 1905
    move-object v2, v15

    .line 1906
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1908
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1911
    move-result-object v1

    .line 1912
    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1917
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    .line 1920
    move-result-object v0

    .line 1921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1927
    goto :goto_3

    .line 1928
    :pswitch_45
    move v9, v13

    .line 1929
    move-object v8, v14

    .line 1930
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 1933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1936
    goto :goto_3

    .line 1937
    :pswitch_46
    move v9, v13

    .line 1938
    move-object v8, v14

    .line 1939
    move-object v2, v15

    .line 1940
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1943
    move-result-object v1

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1947
    move-result v3

    .line 1948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1951
    move-result v4

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1955
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 1958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1961
    goto :goto_3

    .line 1962
    :pswitch_47
    move v9, v13

    .line 1963
    move-object v8, v14

    .line 1964
    move-object v2, v15

    .line 1965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1968
    move-result-object v1

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1972
    move-result v3

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1976
    move-result v4

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1980
    move-result v5

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1984
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 1987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1990
    :goto_3
    return v9

    .line 1991
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
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
