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

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.IInstalld"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.os.IInstalld"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/os/IInstalld;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/IInstalld;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroid/os/IInstalld$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 26
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

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    move-object/from16 v14, p3

    .line 8
    .line 9
    const-string v2, "android.os.IInstalld"

    .line 10
    .line 11
    const/4 v13, 0x1

    .line 12
    if-lt v1, v13, :cond_0

    .line 13
    .line 14
    const v3, 0xffffff

    .line 15
    .line 16
    .line 17
    if-gt v1, v3, :cond_0

    .line 18
    .line 19
    invoke-virtual {v15, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const v3, 0x5f4e5446

    .line 23
    .line 24
    .line 25
    if-ne v1, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return v13

    .line 31
    :cond_1
    packed-switch v1, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->scanApkStats(Ljava/lang/String;I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    .line 55
    .line 56
    :goto_0
    move v9, v13

    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-gez v2, :cond_2

    .line 68
    .line 69
    const/4 v2, 0x0

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    new-array v2, v2, [J

    .line 72
    .line 73
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getCompressedStats(Ljava/lang/String;[J)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    .line 100
    .line 101
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->compressFile(Ljava/lang/String;Z)V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :pswitch_3
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->getDualDARLockstate()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 129
    .line 130
    .line 131
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->hasDualDARPolicyRecursively(Ljava/lang/String;Ljava/util/List;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    .line 151
    .line 152
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->hasDualDARPolicy(Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 176
    .line 177
    .line 178
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDirRecursively(IILjava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->setDualDARPolicyDir(IILjava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 226
    .line 227
    .line 228
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->setEviction(IZ)Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_0

    .line 239
    .line 240
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->migrateSdpDb(Ljava/lang/String;I)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 259
    .line 260
    .line 261
    goto/16 :goto_0

    .line 262
    .line 263
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->removeEncUserDir(I)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 283
    .line 284
    .line 285
    move-result v1

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->removeEncPkgDir(ILjava/lang/String;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 314
    .line 315
    .line 316
    move-result v3

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 318
    .line 319
    .line 320
    move-result v4

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    .line 323
    .line 324
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createEncAppData(Ljava/lang/String;III)Z

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_0

    .line 335
    .line 336
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    .line 342
    .line 343
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->deleteKnoxFile(Ljava/lang/String;)Z

    .line 344
    .line 345
    .line 346
    move-result v0

    .line 347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 351
    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 360
    .line 361
    .line 362
    move-result-wide v2

    .line 363
    new-instance v4, Ljava/util/ArrayList;

    .line 364
    .line 365
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    .line 370
    .line 371
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getKnoxScanDir(Ljava/lang/String;JLjava/util/List;)Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    .line 377
    .line 378
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    .line 392
    .line 393
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->getKnoxFileInfo(Ljava/lang/String;)[J

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    .line 399
    .line 400
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_0

    .line 404
    .line 405
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 410
    .line 411
    .line 412
    move-result-wide v2

    .line 413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    .line 415
    .line 416
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->copyKnoxCancel(Ljava/lang/String;J)Z

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 424
    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 441
    .line 442
    .line 443
    move-result v4

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 445
    .line 446
    .line 447
    move-result v5

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 449
    .line 450
    .line 451
    move-result-wide v6

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 453
    .line 454
    .line 455
    move-result-wide v8

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 457
    .line 458
    .line 459
    move-result-wide v10

    .line 460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    .line 462
    .line 463
    move-object/from16 v0, p0

    .line 464
    .line 465
    invoke-interface/range {v0 .. v11}, Landroid/os/IInstalld;->copyKnoxChunks(Ljava/lang/String;ILjava/lang/String;IIJJJ)I

    .line 466
    .line 467
    .line 468
    move-result v0

    .line 469
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_0

    .line 476
    .line 477
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 482
    .line 483
    .line 484
    move-result v2

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v3

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 490
    .line 491
    .line 492
    move-result v4

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 494
    .line 495
    .line 496
    move-result v5

    .line 497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    .line 499
    .line 500
    move-object/from16 v0, p0

    .line 501
    .line 502
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->copyKnoxAppData(Ljava/lang/String;ILjava/lang/String;II)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-static {v1}, Landroid/os/IInstalld$IFsveritySetupAuthToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v2

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    .line 532
    .line 533
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->enableFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    move-result v0

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_0

    .line 544
    .line 545
    :pswitch_14
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 546
    .line 547
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 548
    .line 549
    .line 550
    move-result-object v1

    .line 551
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 552
    .line 553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    .line 559
    .line 560
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->createFsveritySetupAuthToken(Landroid/os/ParcelFileDescriptor;I)Landroid/os/IInstalld$IFsveritySetupAuthToken;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 568
    .line 569
    .line 570
    goto/16 :goto_0

    .line 571
    .line 572
    :pswitch_15
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->removeNotTargetedPreloadApksIfNeeded()Z

    .line 573
    .line 574
    .line 575
    move-result v0

    .line 576
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    .line 578
    .line 579
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 580
    .line 581
    .line 582
    goto/16 :goto_0

    .line 583
    .line 584
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 593
    .line 594
    .line 595
    move-result-object v3

    .line 596
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v4

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 601
    .line 602
    .line 603
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getOdexVisibility(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    .line 609
    .line 610
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    .line 612
    .line 613
    goto/16 :goto_0

    .line 614
    .line 615
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v1

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 620
    .line 621
    .line 622
    move-result v2

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 624
    .line 625
    .line 626
    move-result v3

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    .line 629
    .line 630
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->cleanupInvalidPackageDirs(Ljava/lang/String;II)V

    .line 631
    .line 632
    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_0

    .line 637
    .line 638
    :pswitch_18
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->migrateLegacyObbData()V

    .line 639
    .line 640
    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    .line 643
    .line 644
    goto/16 :goto_0

    .line 645
    .line 646
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v1

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 651
    .line 652
    .line 653
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->onPrivateVolumeRemoved(Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    .line 658
    .line 659
    goto/16 :goto_0

    .line 660
    .line 661
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 666
    .line 667
    .line 668
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->tryMountDataMirror(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    .line 673
    .line 674
    goto/16 :goto_0

    .line 675
    .line 676
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 681
    .line 682
    .line 683
    move-result v2

    .line 684
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 685
    .line 686
    .line 687
    move-result-object v3

    .line 688
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    .line 690
    .line 691
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->destroyCeSnapshotsNotSpecified(Ljava/lang/String;I[I)V

    .line 692
    .line 693
    .line 694
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_0

    .line 698
    .line 699
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v2

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 708
    .line 709
    .line 710
    move-result v3

    .line 711
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 712
    .line 713
    .line 714
    move-result-wide v4

    .line 715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 716
    .line 717
    .line 718
    move-result v6

    .line 719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 720
    .line 721
    .line 722
    move-result v7

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    .line 725
    .line 726
    move-object/from16 v0, p0

    .line 727
    .line 728
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 729
    .line 730
    .line 731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    .line 733
    .line 734
    goto/16 :goto_0

    .line 735
    .line 736
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v2

    .line 744
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 749
    .line 750
    .line 751
    move-result-object v4

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 753
    .line 754
    .line 755
    move-result v5

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 757
    .line 758
    .line 759
    move-result v6

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 761
    .line 762
    .line 763
    move-result v7

    .line 764
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 765
    .line 766
    .line 767
    move-object/from16 v0, p0

    .line 768
    .line 769
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 770
    .line 771
    .line 772
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_0

    .line 776
    .line 777
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 782
    .line 783
    .line 784
    move-result-object v2

    .line 785
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 786
    .line 787
    .line 788
    move-result v3

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 790
    .line 791
    .line 792
    move-result v4

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 794
    .line 795
    .line 796
    move-result v5

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    .line 799
    .line 800
    move-object/from16 v0, p0

    .line 801
    .line 802
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    .line 803
    .line 804
    .line 805
    move-result-wide v0

    .line 806
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 810
    .line 811
    .line 812
    goto/16 :goto_0

    .line 813
    .line 814
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 819
    .line 820
    .line 821
    move-result v2

    .line 822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 823
    .line 824
    .line 825
    move-result v3

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v4

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v6

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    .line 840
    .line 841
    move-object/from16 v0, p0

    .line 842
    .line 843
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 844
    .line 845
    .line 846
    move-result v0

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 851
    .line 852
    .line 853
    goto/16 :goto_0

    .line 854
    .line 855
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v1

    .line 859
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    .line 861
    .line 862
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    .line 863
    .line 864
    .line 865
    move-result v0

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    .line 868
    .line 869
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 870
    .line 871
    .line 872
    goto/16 :goto_0

    .line 873
    .line 874
    :pswitch_21
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->invalidateMounts()V

    .line 875
    .line 876
    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    .line 879
    .line 880
    goto/16 :goto_0

    .line 881
    .line 882
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 883
    .line 884
    .line 885
    move-result-object v1

    .line 886
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 887
    .line 888
    .line 889
    move-result-object v2

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 891
    .line 892
    .line 893
    move-result v3

    .line 894
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 895
    .line 896
    .line 897
    move-result-object v4

    .line 898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 899
    .line 900
    .line 901
    move-result v5

    .line 902
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    .line 904
    .line 905
    move-object/from16 v0, p0

    .line 906
    .line 907
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    .line 908
    .line 909
    .line 910
    move-result-object v0

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 915
    .line 916
    .line 917
    goto/16 :goto_0

    .line 918
    .line 919
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v1

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 924
    .line 925
    .line 926
    move-result-object v2

    .line 927
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 928
    .line 929
    .line 930
    move-result v3

    .line 931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v4

    .line 935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 940
    .line 941
    .line 942
    move-result v6

    .line 943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 944
    .line 945
    .line 946
    move-object/from16 v0, p0

    .line 947
    .line 948
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    .line 949
    .line 950
    .line 951
    move-result v0

    .line 952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    .line 954
    .line 955
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 956
    .line 957
    .line 958
    goto/16 :goto_0

    .line 959
    .line 960
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v1

    .line 964
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 965
    .line 966
    .line 967
    move-result-object v2

    .line 968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v4

    .line 976
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    .line 978
    .line 979
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    .line 980
    .line 981
    .line 982
    move-result-wide v0

    .line 983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    .line 985
    .line 986
    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 987
    .line 988
    .line 989
    goto/16 :goto_0

    .line 990
    .line 991
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v1

    .line 995
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 996
    .line 997
    .line 998
    move-result-object v2

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v3

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v4

    .line 1007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    .line 1009
    .line 1010
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    .line 1012
    .line 1013
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    .line 1015
    .line 1016
    goto/16 :goto_0

    .line 1017
    .line 1018
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v1

    .line 1022
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v2

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v4

    .line 1034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1035
    .line 1036
    .line 1037
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    .line 1042
    .line 1043
    goto/16 :goto_0

    .line 1044
    .line 1045
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v1

    .line 1049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v2

    .line 1053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v3

    .line 1057
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    .line 1059
    .line 1060
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    .line 1062
    .line 1063
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1064
    .line 1065
    .line 1066
    goto/16 :goto_0

    .line 1067
    .line 1068
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1069
    .line 1070
    .line 1071
    move-result-object v1

    .line 1072
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1073
    .line 1074
    .line 1075
    move-result-object v2

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1081
    .line 1082
    .line 1083
    move-result v4

    .line 1084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1085
    .line 1086
    .line 1087
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1088
    .line 1089
    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    .line 1092
    .line 1093
    goto/16 :goto_0

    .line 1094
    .line 1095
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v1

    .line 1099
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1100
    .line 1101
    .line 1102
    move-result-wide v2

    .line 1103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1104
    .line 1105
    .line 1106
    move-result v4

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    .line 1109
    .line 1110
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JI)V

    .line 1111
    .line 1112
    .line 1113
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    .line 1115
    .line 1116
    goto/16 :goto_0

    .line 1117
    .line 1118
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v1

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1123
    .line 1124
    .line 1125
    move-result-object v2

    .line 1126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    .line 1128
    .line 1129
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    .line 1131
    .line 1132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    .line 1134
    .line 1135
    goto/16 :goto_0

    .line 1136
    .line 1137
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v1

    .line 1141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1142
    .line 1143
    .line 1144
    move-result-object v2

    .line 1145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    .line 1147
    .line 1148
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .line 1150
    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    .line 1153
    .line 1154
    goto/16 :goto_0

    .line 1155
    .line 1156
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v3

    .line 1168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v4

    .line 1172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1173
    .line 1174
    .line 1175
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v0

    .line 1179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    .line 1181
    .line 1182
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    .line 1184
    .line 1185
    goto/16 :goto_0

    .line 1186
    .line 1187
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v1

    .line 1191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v2

    .line 1195
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    .line 1197
    .line 1198
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->deleteReferenceProfile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    .line 1203
    .line 1204
    goto/16 :goto_0

    .line 1205
    .line 1206
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v1

    .line 1210
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    .line 1212
    .line 1213
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    .line 1218
    .line 1219
    goto/16 :goto_0

    .line 1220
    .line 1221
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v1

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1226
    .line 1227
    .line 1228
    move-result-object v2

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    .line 1231
    .line 1232
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_0

    .line 1239
    .line 1240
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1245
    .line 1246
    .line 1247
    move-result v2

    .line 1248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v3

    .line 1252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1253
    .line 1254
    .line 1255
    move-result-object v4

    .line 1256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1257
    .line 1258
    .line 1259
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 1260
    .line 1261
    .line 1262
    move-result v0

    .line 1263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1264
    .line 1265
    .line 1266
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1267
    .line 1268
    .line 1269
    goto/16 :goto_0

    .line 1270
    .line 1271
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1272
    .line 1273
    .line 1274
    move-result v1

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1276
    .line 1277
    .line 1278
    move-result-object v2

    .line 1279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v3

    .line 1283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v4

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1288
    .line 1289
    .line 1290
    move-result v5

    .line 1291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1292
    .line 1293
    .line 1294
    move-object/from16 v0, p0

    .line 1295
    .line 1296
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v0

    .line 1300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1304
    .line 1305
    .line 1306
    goto/16 :goto_0

    .line 1307
    .line 1308
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1309
    .line 1310
    .line 1311
    move-result v1

    .line 1312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1313
    .line 1314
    .line 1315
    move-result-object v2

    .line 1316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1321
    .line 1322
    .line 1323
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)I

    .line 1324
    .line 1325
    .line 1326
    move-result v0

    .line 1327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1331
    .line 1332
    .line 1333
    goto/16 :goto_0

    .line 1334
    .line 1335
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v2

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1344
    .line 1345
    .line 1346
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    .line 1348
    .line 1349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1350
    .line 1351
    .line 1352
    goto/16 :goto_0

    .line 1353
    .line 1354
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1355
    .line 1356
    .line 1357
    move-result v1

    .line 1358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1359
    .line 1360
    .line 1361
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->controlDexOptBlocking(Z)V

    .line 1362
    .line 1363
    .line 1364
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    .line 1366
    .line 1367
    goto/16 :goto_0

    .line 1368
    .line 1369
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1370
    .line 1371
    .line 1372
    move-result-object v1

    .line 1373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1374
    .line 1375
    .line 1376
    move-result v2

    .line 1377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1378
    .line 1379
    .line 1380
    move-result-object v3

    .line 1381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1382
    .line 1383
    .line 1384
    move-result-object v4

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1386
    .line 1387
    .line 1388
    move-result v5

    .line 1389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v6

    .line 1393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1394
    .line 1395
    .line 1396
    move-result v7

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v8

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v9

    .line 1405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1406
    .line 1407
    .line 1408
    move-result-object v10

    .line 1409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v11

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1414
    .line 1415
    .line 1416
    move-result v12

    .line 1417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1418
    .line 1419
    .line 1420
    move-result v16

    .line 1421
    move/from16 v13, v16

    .line 1422
    .line 1423
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1424
    .line 1425
    .line 1426
    move-result-object v16

    .line 1427
    move-object/from16 v14, v16

    .line 1428
    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v16

    .line 1433
    move-object/from16 v15, v16

    .line 1434
    .line 1435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v16

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1440
    .line 1441
    .line 1442
    move-object/from16 v0, p0

    .line 1443
    .line 1444
    invoke-interface/range {v0 .. v16}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1445
    .line 1446
    .line 1447
    move-result v0

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    .line 1450
    .line 1451
    move-object/from16 v8, p3

    .line 1452
    .line 1453
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1454
    .line 1455
    .line 1456
    :goto_2
    const/4 v9, 0x1

    .line 1457
    goto/16 :goto_3

    .line 1458
    .line 1459
    :pswitch_36
    move-object v8, v14

    .line 1460
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1461
    .line 1462
    .line 1463
    move-result-object v1

    .line 1464
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1465
    .line 1466
    .line 1467
    move-result-object v2

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1469
    .line 1470
    .line 1471
    move-result-object v3

    .line 1472
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1473
    .line 1474
    .line 1475
    move-result v4

    .line 1476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1477
    .line 1478
    .line 1479
    move-result-object v5

    .line 1480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1481
    .line 1482
    .line 1483
    move-result v6

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v7

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1489
    .line 1490
    .line 1491
    move-object/from16 v0, p0

    .line 1492
    .line 1493
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 1494
    .line 1495
    .line 1496
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1497
    .line 1498
    .line 1499
    goto :goto_2

    .line 1500
    :pswitch_37
    move-object v8, v14

    .line 1501
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v1

    .line 1505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1506
    .line 1507
    .line 1508
    move-result v2

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1510
    .line 1511
    .line 1512
    move-result v3

    .line 1513
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1514
    .line 1515
    .line 1516
    move-result-wide v4

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1518
    .line 1519
    .line 1520
    move-object/from16 v0, p0

    .line 1521
    .line 1522
    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 1523
    .line 1524
    .line 1525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1526
    .line 1527
    .line 1528
    goto :goto_2

    .line 1529
    :pswitch_38
    move-object v8, v14

    .line 1530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v1

    .line 1534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1535
    .line 1536
    .line 1537
    move-result v2

    .line 1538
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1539
    .line 1540
    .line 1541
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->getUserCrates(Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 1542
    .line 1543
    .line 1544
    move-result-object v0

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    .line 1547
    .line 1548
    const/4 v9, 0x1

    .line 1549
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1550
    .line 1551
    .line 1552
    goto/16 :goto_3

    .line 1553
    .line 1554
    :pswitch_39
    move v9, v13

    .line 1555
    move-object v8, v14

    .line 1556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1557
    .line 1558
    .line 1559
    move-result-object v1

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1561
    .line 1562
    .line 1563
    move-result-object v2

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1565
    .line 1566
    .line 1567
    move-result v3

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1569
    .line 1570
    .line 1571
    invoke-interface {v0, v1, v2, v3}, Landroid/os/IInstalld;->getAppCrates(Ljava/lang/String;[Ljava/lang/String;I)[Landroid/os/storage/CrateMetadata;

    .line 1572
    .line 1573
    .line 1574
    move-result-object v0

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    .line 1577
    .line 1578
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1579
    .line 1580
    .line 1581
    goto/16 :goto_3

    .line 1582
    .line 1583
    :pswitch_3a
    move v9, v13

    .line 1584
    move-object v8, v14

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1586
    .line 1587
    .line 1588
    move-result-object v1

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1590
    .line 1591
    .line 1592
    move-result v2

    .line 1593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1594
    .line 1595
    .line 1596
    move-result v3

    .line 1597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1598
    .line 1599
    .line 1600
    move-result-object v4

    .line 1601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    .line 1603
    .line 1604
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    .line 1605
    .line 1606
    .line 1607
    move-result-object v0

    .line 1608
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1609
    .line 1610
    .line 1611
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1612
    .line 1613
    .line 1614
    goto/16 :goto_3

    .line 1615
    .line 1616
    :pswitch_3b
    move v9, v13

    .line 1617
    move-object v8, v14

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v1

    .line 1622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1623
    .line 1624
    .line 1625
    move-result v2

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1627
    .line 1628
    .line 1629
    move-result v3

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 1631
    .line 1632
    .line 1633
    move-result-object v4

    .line 1634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    .line 1636
    .line 1637
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    .line 1638
    .line 1639
    .line 1640
    move-result-object v0

    .line 1641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1642
    .line 1643
    .line 1644
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1645
    .line 1646
    .line 1647
    goto/16 :goto_3

    .line 1648
    .line 1649
    :pswitch_3c
    move v9, v13

    .line 1650
    move-object v8, v14

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v1

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v2

    .line 1659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1660
    .line 1661
    .line 1662
    move-result v3

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1664
    .line 1665
    .line 1666
    move-result v4

    .line 1667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1668
    .line 1669
    .line 1670
    move-result v5

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    .line 1672
    .line 1673
    .line 1674
    move-result-object v6

    .line 1675
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1676
    .line 1677
    .line 1678
    move-result-object v7

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1680
    .line 1681
    .line 1682
    move-object/from16 v0, p0

    .line 1683
    .line 1684
    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    .line 1685
    .line 1686
    .line 1687
    move-result-object v0

    .line 1688
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 1692
    .line 1693
    .line 1694
    goto/16 :goto_3

    .line 1695
    .line 1696
    :pswitch_3d
    move v9, v13

    .line 1697
    move-object v8, v14

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1699
    .line 1700
    .line 1701
    move-result-object v1

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1703
    .line 1704
    .line 1705
    move-result v2

    .line 1706
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1707
    .line 1708
    .line 1709
    invoke-interface {v0, v1, v2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V

    .line 1710
    .line 1711
    .line 1712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    .line 1714
    .line 1715
    goto/16 :goto_3

    .line 1716
    .line 1717
    :pswitch_3e
    move v9, v13

    .line 1718
    move-object v8, v14

    .line 1719
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1720
    .line 1721
    .line 1722
    move-result-object v1

    .line 1723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1724
    .line 1725
    .line 1726
    move-result-object v2

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1728
    .line 1729
    .line 1730
    move-result v3

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1732
    .line 1733
    .line 1734
    move-result v4

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1736
    .line 1737
    .line 1738
    move-result-wide v5

    .line 1739
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1740
    .line 1741
    .line 1742
    move-object/from16 v0, p0

    .line 1743
    .line 1744
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1745
    .line 1746
    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    .line 1749
    .line 1750
    goto/16 :goto_3

    .line 1751
    .line 1752
    :pswitch_3f
    move v9, v13

    .line 1753
    move-object v8, v14

    .line 1754
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1755
    .line 1756
    .line 1757
    move-result-object v1

    .line 1758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1759
    .line 1760
    .line 1761
    move-result-object v2

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1763
    .line 1764
    .line 1765
    move-result v3

    .line 1766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1767
    .line 1768
    .line 1769
    move-result v4

    .line 1770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    .line 1771
    .line 1772
    .line 1773
    move-result-wide v5

    .line 1774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1775
    .line 1776
    .line 1777
    move-object/from16 v0, p0

    .line 1778
    .line 1779
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 1780
    .line 1781
    .line 1782
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    .line 1784
    .line 1785
    goto/16 :goto_3

    .line 1786
    .line 1787
    :pswitch_40
    move v9, v13

    .line 1788
    move-object v8, v14

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1790
    .line 1791
    .line 1792
    move-result-object v1

    .line 1793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v2

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1798
    .line 1799
    .line 1800
    move-result v3

    .line 1801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1802
    .line 1803
    .line 1804
    move-result v4

    .line 1805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1806
    .line 1807
    .line 1808
    invoke-interface {v0, v1, v2, v3, v4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1809
    .line 1810
    .line 1811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1812
    .line 1813
    .line 1814
    goto/16 :goto_3

    .line 1815
    .line 1816
    :pswitch_41
    move v9, v13

    .line 1817
    move-object v8, v14

    .line 1818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1819
    .line 1820
    .line 1821
    move-result-object v1

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v2

    .line 1826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1827
    .line 1828
    .line 1829
    move-result v3

    .line 1830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1831
    .line 1832
    .line 1833
    move-result v4

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1835
    .line 1836
    .line 1837
    move-result v5

    .line 1838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1839
    .line 1840
    .line 1841
    move-result-object v6

    .line 1842
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1843
    .line 1844
    .line 1845
    move-object/from16 v0, p0

    .line 1846
    .line 1847
    invoke-interface/range {v0 .. v6}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    .line 1852
    .line 1853
    goto/16 :goto_3

    .line 1854
    .line 1855
    :pswitch_42
    move v9, v13

    .line 1856
    move-object v8, v14

    .line 1857
    sget-object v1, Landroid/os/ReconcileSdkDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1858
    .line 1859
    move-object/from16 v2, p2

    .line 1860
    .line 1861
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1862
    .line 1863
    .line 1864
    move-result-object v1

    .line 1865
    check-cast v1, Landroid/os/ReconcileSdkDataArgs;

    .line 1866
    .line 1867
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1868
    .line 1869
    .line 1870
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->reconcileSdkData(Landroid/os/ReconcileSdkDataArgs;)V

    .line 1871
    .line 1872
    .line 1873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    .line 1875
    .line 1876
    goto/16 :goto_3

    .line 1877
    .line 1878
    :pswitch_43
    move v9, v13

    .line 1879
    move-object v8, v14

    .line 1880
    move-object v2, v15

    .line 1881
    sget-object v1, Landroid/os/CreateAppDataArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1882
    .line 1883
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v1

    .line 1887
    check-cast v1, [Landroid/os/CreateAppDataArgs;

    .line 1888
    .line 1889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1890
    .line 1891
    .line 1892
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppDataBatched([Landroid/os/CreateAppDataArgs;)[Landroid/os/CreateAppDataResult;

    .line 1893
    .line 1894
    .line 1895
    move-result-object v0

    .line 1896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    .line 1898
    .line 1899
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1900
    .line 1901
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

    .line 1907
    .line 1908
    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 1909
    .line 1910
    .line 1911
    move-result-object v1

    .line 1912
    check-cast v1, Landroid/os/CreateAppDataArgs;

    .line 1913
    .line 1914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1915
    .line 1916
    .line 1917
    invoke-interface {v0, v1}, Landroid/os/IInstalld;->createAppData(Landroid/os/CreateAppDataArgs;)Landroid/os/CreateAppDataResult;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v0

    .line 1921
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1922
    .line 1923
    .line 1924
    invoke-virtual {v8, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1925
    .line 1926
    .line 1927
    goto :goto_3

    .line 1928
    :pswitch_45
    move v9, v13

    .line 1929
    move-object v8, v14

    .line 1930
    invoke-interface/range {p0 .. p0}, Landroid/os/IInstalld;->setFirstBoot()V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    .line 1935
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

    .line 1941
    .line 1942
    .line 1943
    move-result-object v1

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1945
    .line 1946
    .line 1947
    move-result v3

    .line 1948
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1949
    .line 1950
    .line 1951
    move-result v4

    .line 1952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1953
    .line 1954
    .line 1955
    invoke-interface {v0, v1, v3, v4}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V

    .line 1956
    .line 1957
    .line 1958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1959
    .line 1960
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

    .line 1966
    .line 1967
    .line 1968
    move-result-object v1

    .line 1969
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1970
    .line 1971
    .line 1972
    move-result v3

    .line 1973
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1974
    .line 1975
    .line 1976
    move-result v4

    .line 1977
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    .line 1978
    .line 1979
    .line 1980
    move-result v5

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    .line 1983
    .line 1984
    invoke-interface {v0, v1, v3, v4, v5}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V

    .line 1985
    .line 1986
    .line 1987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1988
    .line 1989
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
