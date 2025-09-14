.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IVold;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortChanges:I = 0x3f

.field static final TRANSACTION_abortFuse:I = 0x2

.field static final TRANSACTION_abortIdleMaint:I = 0x1e

.field static final TRANSACTION_addAppIds:I = 0xa

.field static final TRANSACTION_addSandboxIds:I = 0xb

.field static final TRANSACTION_asecCreate:I = 0x5a

.field static final TRANSACTION_asecDestroy:I = 0x5e

.field static final TRANSACTION_asecFinalize:I = 0x5c

.field static final TRANSACTION_asecFixperms:I = 0x5d

.field static final TRANSACTION_asecFsPath:I = 0x63

.field static final TRANSACTION_asecGetUsedSpace:I = 0x66

.field static final TRANSACTION_asecList:I = 0x64

.field static final TRANSACTION_asecMount:I = 0x5f

.field static final TRANSACTION_asecPath:I = 0x62

.field static final TRANSACTION_asecRename:I = 0x61

.field static final TRANSACTION_asecResize:I = 0x5b

.field static final TRANSACTION_asecTrim:I = 0x65

.field static final TRANSACTION_asecUnmount:I = 0x60

.field static final TRANSACTION_benchmark:I = 0x12

.field static final TRANSACTION_bindMount:I = 0x51

.field static final TRANSACTION_commitChanges:I = 0x40

.field static final TRANSACTION_cpFileAtData:I = 0x58

.field static final TRANSACTION_createObb:I = 0x1a

.field static final TRANSACTION_createPassStorage:I = 0x2e

.field static final TRANSACTION_createStubVolume:I = 0x4a

.field static final TRANSACTION_createUserStorageKeys:I = 0x2b

.field static final TRANSACTION_destroyDsuMetadataKey:I = 0x52

.field static final TRANSACTION_destroyObb:I = 0x1b

.field static final TRANSACTION_destroyPassStorage:I = 0x2f

.field static final TRANSACTION_destroySandboxForApp:I = 0x3a

.field static final TRANSACTION_destroyStubVolume:I = 0x4b

.field static final TRANSACTION_destroyUserStorage:I = 0x38

.field static final TRANSACTION_destroyUserStorageKeys:I = 0x2c

.field static final TRANSACTION_earlyBootEnded:I = 0x49

.field static final TRANSACTION_encryptFstab:I = 0x29

.field static final TRANSACTION_ensureAppDirsCreated:I = 0x19

.field static final TRANSACTION_fbeEnable:I = 0x26

.field static final TRANSACTION_fixupAppDir:I = 0x18

.field static final TRANSACTION_forgetPartition:I = 0xe

.field static final TRANSACTION_format:I = 0x11

.field static final TRANSACTION_fstrim:I = 0x1c

.field static final TRANSACTION_getPassStorage:I = 0x32

.field static final TRANSACTION_getStorageLifeTime:I = 0x1f

.field static final TRANSACTION_getStorageRemainingLifetime:I = 0x54

.field static final TRANSACTION_getStorageSize:I = 0x53

.field static final TRANSACTION_getUnlockedUsers:I = 0x34

.field static final TRANSACTION_getUsedF2fsFileNode:I = 0x56

.field static final TRANSACTION_getWriteAmount:I = 0x22

.field static final TRANSACTION_incFsEnabled:I = 0x4d

.field static final TRANSACTION_initUser0:I = 0x27

.field static final TRANSACTION_isCheckpointing:I = 0x3e

.field static final TRANSACTION_isPassUnlocked:I = 0x33

.field static final TRANSACTION_isSensitive:I = 0x68

.field static final TRANSACTION_lockCeStorage:I = 0x36

.field static final TRANSACTION_lockPassStorage:I = 0x30

.field static final TRANSACTION_markBootAttempt:I = 0x44

.field static final TRANSACTION_monitor:I = 0x3

.field static final TRANSACTION_mount:I = 0xf

.field static final TRANSACTION_mountAppFuse:I = 0x23

.field static final TRANSACTION_mountFstab:I = 0x28

.field static final TRANSACTION_mountIncFs:I = 0x4e

.field static final TRANSACTION_mountSdpMediaStorageCmd:I = 0x69

.field static final TRANSACTION_moveStorage:I = 0x13

.field static final TRANSACTION_mvFileAtData:I = 0x57

.field static final TRANSACTION_needsCheckpoint:I = 0x3c

.field static final TRANSACTION_needsRollback:I = 0x3d

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xc

.field static final TRANSACTION_onUserAdded:I = 0x6

.field static final TRANSACTION_onUserRemoved:I = 0x7

.field static final TRANSACTION_onUserStarted:I = 0x8

.field static final TRANSACTION_onUserStopped:I = 0x9

.field static final TRANSACTION_openAppFuseFile:I = 0x4c

.field static final TRANSACTION_partition:I = 0xd

.field static final TRANSACTION_prepareCheckpoint:I = 0x41

.field static final TRANSACTION_prepareSandboxForApp:I = 0x39

.field static final TRANSACTION_prepareUserStorage:I = 0x37

.field static final TRANSACTION_refreshLatestWrite:I = 0x21

.field static final TRANSACTION_remountAppStorageDirs:I = 0x15

.field static final TRANSACTION_remountUid:I = 0x14

.field static final TRANSACTION_reserveDataBlocks:I = 0x6e

.field static final TRANSACTION_reset:I = 0x4

.field static final TRANSACTION_resetCheckpoint:I = 0x48

.field static final TRANSACTION_restoreCheckpoint:I = 0x42

.field static final TRANSACTION_restoreCheckpointPart:I = 0x43

.field static final TRANSACTION_runIdleDefrag:I = 0x55

.field static final TRANSACTION_runIdleMaint:I = 0x1d

.field static final TRANSACTION_sdeEnable:I = 0x25

.field static final TRANSACTION_setCeStorageProtection:I = 0x2d

.field static final TRANSACTION_setDualDARPolicyCmd:I = 0x6c

.field static final TRANSACTION_setGCUrgentPace:I = 0x20

.field static final TRANSACTION_setIncFsMountOptions:I = 0x50

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_setMpUidForFileSystem:I = 0x59

.field static final TRANSACTION_setSdpPolicyCmd:I = 0x6a

.field static final TRANSACTION_setSdpPolicyToPathCmd:I = 0x6b

.field static final TRANSACTION_setSensitive:I = 0x67

.field static final TRANSACTION_setStorageBindingSeed:I = 0x2a

.field static final TRANSACTION_setupAppDir:I = 0x17

.field static final TRANSACTION_shrinkDataDdp:I = 0x6d

.field static final TRANSACTION_shutdown:I = 0x5

.field static final TRANSACTION_startCheckpoint:I = 0x3b

.field static final TRANSACTION_supportsBlockCheckpoint:I = 0x46

.field static final TRANSACTION_supportsCheckpoint:I = 0x45

.field static final TRANSACTION_supportsFileCheckpoint:I = 0x47

.field static final TRANSACTION_unlockCeStorage:I = 0x35

.field static final TRANSACTION_unlockPassStorage:I = 0x31

.field static final TRANSACTION_unmount:I = 0x10

.field static final TRANSACTION_unmountAppFuse:I = 0x24

.field static final TRANSACTION_unmountAppStorageDirs:I = 0x16

.field static final TRANSACTION_unmountIncFs:I = 0x4f


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    const-string v0, "android.os.IVold"

    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IVold"

    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    instance-of v1, v0, Landroid/os/IVold;

    .line 15
    if-eqz v1, :cond_1

    .line 17
    check-cast v0, Landroid/os/IVold;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p0, v0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v3, "android.os.IVold"

    .line 3
    const/4 v8, 0x1

    .line 4
    if-lt p1, v8, :cond_0

    .line 6
    const v4, 0xffffff

    .line 9
    if-gt p1, v4, :cond_0

    .line 11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 14
    :cond_0
    const v4, 0x5f4e5446

    .line 17
    if-ne p1, v4, :cond_1

    .line 19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 22
    return v8

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 38
    invoke-interface {p0, v3, v4}, Landroid/os/IVold;->reserveDataBlocks(J)I

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    goto/16 :goto_0

    .line 50
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 57
    invoke-interface {p0, v3, v4}, Landroid/os/IVold;->shrinkDataDdp(J)Z

    .line 60
    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    goto/16 :goto_0

    .line 69
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 72
    move-result v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 76
    move-result v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setDualDARPolicyCmd(II)Z

    .line 83
    move-result v0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    goto/16 :goto_0

    .line 92
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 95
    move-result v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    .line 106
    move-result v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 113
    goto/16 :goto_0

    .line 115
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 118
    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 122
    invoke-interface {p0, v1}, Landroid/os/IVold;->setSdpPolicyCmd(I)Z

    .line 125
    move-result v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    goto/16 :goto_0

    .line 134
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 137
    move-result v1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 141
    invoke-interface {p0, v1}, Landroid/os/IVold;->mountSdpMediaStorageCmd(I)Z

    .line 144
    move-result v0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 151
    goto/16 :goto_0

    .line 153
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, v1}, Landroid/os/IVold;->isSensitive(Ljava/lang/String;)Z

    .line 163
    move-result v0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 170
    goto/16 :goto_0

    .line 172
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 175
    move-result v1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSensitive(ILjava/lang/String;)Z

    .line 186
    move-result v0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 193
    goto/16 :goto_0

    .line 195
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecGetUsedSpace(Ljava/lang/String;)I

    .line 205
    move-result v0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    goto/16 :goto_0

    .line 214
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 221
    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecTrim(Ljava/lang/String;ILjava/lang/String;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    goto/16 :goto_0

    .line 237
    :pswitch_a
    invoke-interface {p0}, Landroid/os/IVold;->asecList()[Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 247
    goto/16 :goto_0

    .line 249
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    goto/16 :goto_0

    .line 268
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    goto/16 :goto_0

    .line 287
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    goto/16 :goto_0

    .line 306
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 313
    move-result v3

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecUnmount(Ljava/lang/String;Z)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_0

    .line 325
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 336
    move-result v4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 340
    move-result v5

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    goto/16 :goto_0

    .line 352
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 359
    move-result v3

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecDestroy(Ljava/lang/String;Z)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    goto/16 :goto_0

    .line 371
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 378
    move-result v3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_0

    .line 394
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFinalize(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    goto/16 :goto_0

    .line 409
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 416
    move-result v3

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 420
    move-result-object v4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 424
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecResize(Ljava/lang/String;ILjava/lang/String;)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    goto/16 :goto_0

    .line 432
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 439
    move-result v3

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 451
    move-result v6

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 455
    move-result v7

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    move-object v0, p0

    .line 460
    move v2, v3

    .line 461
    move-object v3, v4

    .line 462
    move-object v4, v5

    .line 463
    move v5, v6

    .line 464
    move v6, v7

    .line 465
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->asecCreate(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_0

    .line 473
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 476
    move-result v1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-interface {p0, v1}, Landroid/os/IVold;->setMpUidForFileSystem(I)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_0

    .line 488
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 499
    move-result v4

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 503
    move-result v5

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 507
    move-result-object v6

    .line 508
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 515
    move-object v0, p0

    .line 516
    move-object v2, v3

    .line 517
    move v3, v4

    .line 518
    move v4, v5

    .line 519
    move-object v5, v6

    .line 520
    invoke-interface/range {v0 .. v5}, Landroid/os/IVold;->cpFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_0

    .line 528
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 539
    move-result v4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 543
    move-result v5

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 547
    move-result-object v6

    .line 548
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 551
    move-result-object v6

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 555
    move-object v0, p0

    .line 556
    move-object v2, v3

    .line 557
    move v3, v4

    .line 558
    move v4, v5

    .line 559
    move-object v5, v6

    .line 560
    invoke-interface/range {v0 .. v5}, Landroid/os/IVold;->mvFileAtData(Ljava/lang/String;Ljava/lang/String;IILandroid/os/IVoldTaskListener;)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 566
    goto/16 :goto_0

    .line 568
    :pswitch_18
    invoke-interface {p0}, Landroid/os/IVold;->getUsedF2fsFileNode()J

    .line 571
    move-result-wide v0

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 578
    goto/16 :goto_0

    .line 580
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 583
    move-result-object v1

    .line 584
    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 591
    invoke-interface {p0, v1}, Landroid/os/IVold;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V

    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    goto/16 :goto_0

    .line 599
    :pswitch_1a
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    .line 602
    move-result v0

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 609
    goto/16 :goto_0

    .line 611
    :pswitch_1b
    invoke-interface {p0}, Landroid/os/IVold;->getStorageSize()J

    .line 614
    move-result-wide v0

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 621
    goto/16 :goto_0

    .line 623
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 626
    move-result-object v1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 630
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 638
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    goto/16 :goto_0

    .line 657
    :pswitch_1e
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 659
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 668
    move-result v3

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 672
    move-result v4

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 676
    move-result-object v5

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    goto/16 :goto_0

    .line 688
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmountIncFs(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    goto/16 :goto_0

    .line 703
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 710
    move-result-object v3

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 714
    move-result v4

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 718
    move-result-object v5

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 722
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 732
    goto/16 :goto_0

    .line 734
    :pswitch_21
    invoke-interface {p0}, Landroid/os/IVold;->incFsEnabled()Z

    .line 737
    move-result v0

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 744
    goto/16 :goto_0

    .line 746
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 749
    move-result v1

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 753
    move-result v3

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 757
    move-result v4

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 761
    move-result v5

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 772
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 775
    goto/16 :goto_0

    .line 777
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V

    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    goto/16 :goto_0

    .line 792
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 803
    move-result-object v4

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 807
    move-result-object v5

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 811
    move-result-object v6

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 815
    move-result v7

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 819
    move-object v0, p0

    .line 820
    move-object v2, v3

    .line 821
    move-object v3, v4

    .line 822
    move-object v4, v5

    .line 823
    move-object v5, v6

    .line 824
    move v6, v7

    .line 825
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 832
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 835
    goto/16 :goto_0

    .line 837
    :pswitch_25
    invoke-interface {p0}, Landroid/os/IVold;->earlyBootEnded()V

    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 843
    goto/16 :goto_0

    .line 845
    :pswitch_26
    invoke-interface {p0}, Landroid/os/IVold;->resetCheckpoint()V

    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 851
    goto/16 :goto_0

    .line 853
    :pswitch_27
    invoke-interface {p0}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    .line 856
    move-result v0

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 863
    goto/16 :goto_0

    .line 865
    :pswitch_28
    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 868
    move-result v0

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 875
    goto/16 :goto_0

    .line 877
    :pswitch_29
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    .line 880
    move-result v0

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 887
    goto/16 :goto_0

    .line 889
    :pswitch_2a
    invoke-interface {p0}, Landroid/os/IVold;->markBootAttempt()V

    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    goto/16 :goto_0

    .line 897
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 904
    move-result v3

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    goto/16 :goto_0

    .line 916
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 919
    move-result-object v1

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-interface {p0, v1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V

    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 929
    goto/16 :goto_0

    .line 931
    :pswitch_2d
    invoke-interface {p0}, Landroid/os/IVold;->prepareCheckpoint()V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    goto/16 :goto_0

    .line 939
    :pswitch_2e
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_0

    .line 947
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 950
    move-result-object v1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 954
    move-result v3

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 958
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    goto/16 :goto_0

    .line 966
    :pswitch_30
    invoke-interface {p0}, Landroid/os/IVold;->isCheckpointing()Z

    .line 969
    move-result v0

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 976
    goto/16 :goto_0

    .line 978
    :pswitch_31
    invoke-interface {p0}, Landroid/os/IVold;->needsRollback()Z

    .line 981
    move-result v0

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 985
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 988
    goto/16 :goto_0

    .line 990
    :pswitch_32
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    .line 993
    move-result v0

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 997
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1000
    goto/16 :goto_0

    .line 1002
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1005
    move-result v1

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-interface {p0, v1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1015
    goto/16 :goto_0

    .line 1017
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1020
    move-result-object v1

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1024
    move-result-object v3

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1028
    move-result v4

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1038
    goto/16 :goto_0

    .line 1040
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1043
    move-result-object v1

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1047
    move-result v3

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1051
    move-result-object v4

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1055
    move-result v5

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_0

    .line 1067
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1070
    move-result-object v1

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1078
    move-result v4

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1088
    goto/16 :goto_0

    .line 1090
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1093
    move-result-object v1

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1097
    move-result v3

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1101
    move-result v4

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1105
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    goto/16 :goto_0

    .line 1113
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1116
    move-result v1

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-interface {p0, v1}, Landroid/os/IVold;->lockCeStorage(I)V

    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    goto/16 :goto_0

    .line 1128
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1131
    move-result v1

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1135
    move-result-object v3

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->unlockCeStorage(I[B)V

    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_0

    .line 1147
    :pswitch_3a
    invoke-interface {p0}, Landroid/os/IVold;->getUnlockedUsers()[I

    .line 1150
    move-result-object v0

    .line 1151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1157
    goto/16 :goto_0

    .line 1159
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1162
    move-result-object v1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1166
    move-result v3

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1170
    move-result v4

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1174
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->isPassUnlocked(Ljava/lang/String;II)Z

    .line 1177
    move-result v0

    .line 1178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1184
    goto/16 :goto_0

    .line 1186
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1189
    move-result-object v1

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1193
    move-result v3

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1197
    move-result v4

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->getPassStorage(Ljava/lang/String;II)Ljava/lang/String;

    .line 1204
    move-result-object v0

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1211
    goto/16 :goto_0

    .line 1213
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1216
    move-result-object v1

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1220
    move-result v3

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1224
    move-result v4

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->unlockPassStorage(Ljava/lang/String;II)I

    .line 1231
    move-result v0

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    goto/16 :goto_0

    .line 1240
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1247
    move-result v3

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1251
    move-result v4

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1255
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->lockPassStorage(Ljava/lang/String;II)I

    .line 1258
    move-result v0

    .line 1259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    goto/16 :goto_0

    .line 1267
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1270
    move-result-object v1

    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1278
    move-result v4

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1282
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    .line 1285
    move-result v0

    .line 1286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1289
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1292
    goto/16 :goto_0

    .line 1294
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1297
    move-result-object v1

    .line 1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1301
    move-result v3

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1305
    move-result v4

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1309
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->createPassStorage(Ljava/lang/String;II)I

    .line 1312
    move-result v0

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1319
    goto/16 :goto_0

    .line 1321
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1324
    move-result v1

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1328
    move-result-object v3

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1332
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setCeStorageProtection(I[B)V

    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1338
    goto/16 :goto_0

    .line 1340
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1343
    move-result v1

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1347
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyUserStorageKeys(I)V

    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1353
    goto/16 :goto_0

    .line 1355
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1358
    move-result v1

    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1362
    move-result v3

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->createUserStorageKeys(IZ)V

    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    goto/16 :goto_0

    .line 1374
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1377
    move-result-object v1

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1381
    invoke-interface {p0, v1}, Landroid/os/IVold;->setStorageBindingSeed([B)V

    .line 1384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    goto/16 :goto_0

    .line 1389
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1392
    move-result-object v1

    .line 1393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1396
    move-result-object v3

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1400
    move-result v4

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1404
    move-result-object v5

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1408
    move-result v6

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1412
    move-result-object v7

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1416
    move-object v0, p0

    .line 1417
    move-object v2, v3

    .line 1418
    move v3, v4

    .line 1419
    move-object v4, v5

    .line 1420
    move v5, v6

    .line 1421
    move-object v6, v7

    .line 1422
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->encryptFstab(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z[Ljava/lang/String;)V

    .line 1425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1428
    goto/16 :goto_0

    .line 1430
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1433
    move-result-object v1

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1437
    move-result-object v3

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1441
    move-result v4

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1445
    move-result-object v5

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1449
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1455
    goto/16 :goto_0

    .line 1457
    :pswitch_47
    invoke-interface {p0}, Landroid/os/IVold;->initUser0()V

    .line 1460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    goto/16 :goto_0

    .line 1465
    :pswitch_48
    invoke-interface {p0}, Landroid/os/IVold;->fbeEnable()V

    .line 1468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    goto/16 :goto_0

    .line 1473
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1476
    move-result-object v1

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1480
    move-result v3

    .line 1481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1484
    move-result v4

    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1488
    move-result v5

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1492
    move-result-object v6

    .line 1493
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1496
    move-result-object v6

    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1500
    move-result-object v7

    .line 1501
    invoke-static {v7}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    .line 1504
    move-result-object v7

    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1508
    move-object v0, p0

    .line 1509
    move v2, v3

    .line 1510
    move v3, v4

    .line 1511
    move v4, v5

    .line 1512
    move-object v5, v6

    .line 1513
    move-object v6, v7

    .line 1514
    invoke-interface/range {v0 .. v6}, Landroid/os/IVold;->sdeEnable(Ljava/lang/String;IIZLandroid/os/IVoldTaskListener;Landroid/os/IVoldMountCallback;)V

    .line 1517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1520
    goto/16 :goto_0

    .line 1522
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1525
    move-result v1

    .line 1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1529
    move-result v3

    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1533
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 1536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    goto/16 :goto_0

    .line 1541
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1544
    move-result v1

    .line 1545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1548
    move-result v3

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1552
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1559
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1562
    goto/16 :goto_0

    .line 1564
    :pswitch_4c
    invoke-interface {p0}, Landroid/os/IVold;->getWriteAmount()I

    .line 1567
    move-result v0

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    goto/16 :goto_0

    .line 1576
    :pswitch_4d
    invoke-interface {p0}, Landroid/os/IVold;->refreshLatestWrite()V

    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1582
    goto/16 :goto_0

    .line 1584
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1587
    move-result v1

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1591
    move-result v3

    .line 1592
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 1595
    move-result v4

    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 1599
    move-result v5

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1603
    move-result v6

    .line 1604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1607
    move-result v7

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1611
    move-result v9

    .line 1612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1615
    move-object v0, p0

    .line 1616
    move v2, v3

    .line 1617
    move v3, v4

    .line 1618
    move v4, v5

    .line 1619
    move v5, v6

    .line 1620
    move v6, v7

    .line 1621
    move v7, v9

    .line 1622
    invoke-interface/range {v0 .. v7}, Landroid/os/IVold;->setGCUrgentPace(IIFFIII)V

    .line 1625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    goto/16 :goto_0

    .line 1630
    :pswitch_4f
    invoke-interface {p0}, Landroid/os/IVold;->getStorageLifeTime()I

    .line 1633
    move-result v0

    .line 1634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1640
    goto/16 :goto_0

    .line 1642
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1645
    move-result-object v1

    .line 1646
    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1649
    move-result-object v1

    .line 1650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1653
    invoke-interface {p0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 1656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1659
    goto/16 :goto_0

    .line 1661
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1664
    move-result v1

    .line 1665
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1668
    move-result-object v3

    .line 1669
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1672
    move-result-object v3

    .line 1673
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1676
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 1679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1682
    goto/16 :goto_0

    .line 1684
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1687
    move-result v1

    .line 1688
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1691
    move-result-object v3

    .line 1692
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1695
    move-result-object v3

    .line 1696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1699
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    goto/16 :goto_0

    .line 1707
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1710
    move-result-object v1

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1714
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1720
    goto/16 :goto_0

    .line 1722
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1725
    move-result-object v1

    .line 1726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1729
    move-result v3

    .line 1730
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1733
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    .line 1736
    move-result-object v0

    .line 1737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1740
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1743
    goto/16 :goto_0

    .line 1745
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1748
    move-result-object v1

    .line 1749
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1752
    move-result v3

    .line 1753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1756
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 1759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1762
    goto/16 :goto_0

    .line 1764
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1767
    move-result-object v1

    .line 1768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1771
    move-result v3

    .line 1772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1775
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V

    .line 1778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1781
    goto/16 :goto_0

    .line 1783
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1786
    move-result-object v1

    .line 1787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1790
    move-result v3

    .line 1791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1794
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 1797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    goto/16 :goto_0

    .line 1802
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1805
    move-result v1

    .line 1806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1809
    move-result v3

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1813
    move-result-object v4

    .line 1814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1817
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    goto/16 :goto_0

    .line 1825
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1828
    move-result v1

    .line 1829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1832
    move-result v3

    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1836
    move-result-object v4

    .line 1837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1840
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    goto/16 :goto_0

    .line 1848
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1851
    move-result v1

    .line 1852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1855
    move-result v3

    .line 1856
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1859
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->remountUid(II)V

    .line 1862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    goto/16 :goto_0

    .line 1867
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1870
    move-result-object v1

    .line 1871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1874
    move-result-object v3

    .line 1875
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1878
    move-result-object v4

    .line 1879
    invoke-static {v4}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1882
    move-result-object v4

    .line 1883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1886
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    goto/16 :goto_0

    .line 1894
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1897
    move-result-object v1

    .line 1898
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1901
    move-result-object v3

    .line 1902
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1905
    move-result-object v3

    .line 1906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1909
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1915
    goto/16 :goto_0

    .line 1917
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1920
    move-result-object v1

    .line 1921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1924
    move-result-object v3

    .line 1925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1928
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 1931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    goto/16 :goto_0

    .line 1936
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1939
    move-result-object v1

    .line 1940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1943
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 1946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    goto/16 :goto_0

    .line 1951
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1954
    move-result-object v1

    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1958
    move-result v3

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1962
    move-result v4

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1966
    move-result-object v5

    .line 1967
    invoke-static {v5}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    .line 1970
    move-result-object v5

    .line 1971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1974
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 1977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1980
    goto/16 :goto_0

    .line 1982
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1985
    move-result-object v1

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1989
    move-result-object v3

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1993
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1999
    goto/16 :goto_0

    .line 2001
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2004
    move-result-object v1

    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2008
    move-result v3

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2012
    move-result v4

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2016
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2022
    goto/16 :goto_0

    .line 2024
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2027
    move-result v1

    .line 2028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2031
    invoke-interface {p0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 2034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2037
    goto/16 :goto_0

    .line 2039
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2042
    move-result-object v1

    .line 2043
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2046
    move-result-object v3

    .line 2047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2050
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V

    .line 2053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2056
    goto/16 :goto_0

    .line 2058
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2061
    move-result-object v1

    .line 2062
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2065
    move-result-object v3

    .line 2066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2069
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V

    .line 2072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2075
    goto/16 :goto_0

    .line 2077
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2080
    move-result v1

    .line 2081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2084
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 2087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    goto :goto_0

    .line 2091
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2094
    move-result v1

    .line 2095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2098
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 2101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2104
    goto :goto_0

    .line 2105
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2108
    move-result v1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserRemoved(I)V

    .line 2115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2118
    goto :goto_0

    .line 2119
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2122
    move-result v1

    .line 2123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2126
    move-result v3

    .line 2127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2130
    move-result v4

    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2134
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->onUserAdded(III)V

    .line 2137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2140
    goto :goto_0

    .line 2141
    :pswitch_69
    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V

    .line 2144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2147
    goto :goto_0

    .line 2148
    :pswitch_6a
    invoke-interface {p0}, Landroid/os/IVold;->reset()V

    .line 2151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    goto :goto_0

    .line 2155
    :pswitch_6b
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V

    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    goto :goto_0

    .line 2162
    :pswitch_6c
    invoke-interface {p0}, Landroid/os/IVold;->abortFuse()V

    .line 2165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2168
    goto :goto_0

    .line 2169
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2172
    move-result-object v1

    .line 2173
    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    .line 2176
    move-result-object v1

    .line 2177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2180
    invoke-interface {p0, v1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V

    .line 2183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2186
    :goto_0
    return v8

    .line 2187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
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
