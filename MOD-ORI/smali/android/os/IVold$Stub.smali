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

    .line 2
    .line 3
    .line 4
    const-string v0, "android.os.IVold"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
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
    const-string v0, "android.os.IVold"

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
    instance-of v1, v0, Landroid/os/IVold;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/os/IVold;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p0, v0, Landroid/os/IVold$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v3, "android.os.IVold"

    .line 2
    .line 3
    const/4 v8, 0x1

    .line 4
    if-lt p1, v8, :cond_0

    .line 5
    .line 6
    const v4, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v4, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v4, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v4, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v8

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 32
    .line 33
    .line 34
    move-result-wide v3

    .line 35
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 36
    .line 37
    .line 38
    invoke-interface {p0, v3, v4}, Landroid/os/IVold;->reserveDataBlocks(J)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_0

    .line 49
    .line 50
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 55
    .line 56
    .line 57
    invoke-interface {p0, v3, v4}, Landroid/os/IVold;->shrinkDataDdp(J)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_0

    .line 68
    .line 69
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 78
    .line 79
    .line 80
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setDualDARPolicyCmd(II)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 101
    .line 102
    .line 103
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSdpPolicyToPathCmd(ILjava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    .line 121
    .line 122
    invoke-interface {p0, v1}, Landroid/os/IVold;->setSdpPolicyCmd(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_0

    .line 133
    .line 134
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 139
    .line 140
    .line 141
    invoke-interface {p0, v1}, Landroid/os/IVold;->mountSdpMediaStorageCmd(I)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 149
    .line 150
    .line 151
    goto/16 :goto_0

    .line 152
    .line 153
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    .line 159
    .line 160
    invoke-interface {p0, v1}, Landroid/os/IVold;->isSensitive(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    .line 182
    .line 183
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setSensitive(ILjava/lang/String;)Z

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    .line 201
    .line 202
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecGetUsedSpace(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_0

    .line 213
    .line 214
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 219
    .line 220
    .line 221
    move-result v3

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    .line 228
    .line 229
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecTrim(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_0

    .line 236
    .line 237
    :pswitch_a
    invoke-interface {p0}, Landroid/os/IVold;->asecList()[Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_0

    .line 248
    .line 249
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    .line 255
    .line 256
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFsPath(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 273
    .line 274
    .line 275
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecPath(Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    .line 281
    .line 282
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v3

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    .line 297
    .line 298
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    .line 303
    .line 304
    goto/16 :goto_0

    .line 305
    .line 306
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 311
    .line 312
    .line 313
    move-result v3

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    .line 316
    .line 317
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecUnmount(Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 334
    .line 335
    .line 336
    move-result v4

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    .line 343
    .line 344
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->asecMount(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 357
    .line 358
    .line 359
    move-result v3

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    .line 362
    .line 363
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->asecDestroy(Ljava/lang/String;Z)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    .line 368
    .line 369
    goto/16 :goto_0

    .line 370
    .line 371
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 376
    .line 377
    .line 378
    move-result v3

    .line 379
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v4

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    .line 385
    .line 386
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecFixperms(Ljava/lang/String;ILjava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 390
    .line 391
    .line 392
    goto/16 :goto_0

    .line 393
    .line 394
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    .line 400
    .line 401
    invoke-interface {p0, v1}, Landroid/os/IVold;->asecFinalize(Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    .line 406
    .line 407
    goto/16 :goto_0

    .line 408
    .line 409
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 414
    .line 415
    .line 416
    move-result v3

    .line 417
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    .line 423
    .line 424
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->asecResize(Ljava/lang/String;ILjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    .line 429
    .line 430
    goto/16 :goto_0

    .line 431
    .line 432
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v5

    .line 448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 449
    .line 450
    .line 451
    move-result v6

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 453
    .line 454
    .line 455
    move-result v7

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    .line 458
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

    .line 466
    .line 467
    .line 468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    .line 470
    .line 471
    goto/16 :goto_0

    .line 472
    .line 473
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    .line 479
    .line 480
    invoke-interface {p0, v1}, Landroid/os/IVold;->setMpUidForFileSystem(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 484
    .line 485
    .line 486
    goto/16 :goto_0

    .line 487
    .line 488
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 497
    .line 498
    .line 499
    move-result v4

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 505
    .line 506
    .line 507
    move-result-object v6

    .line 508
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    .line 514
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

    .line 521
    .line 522
    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    .line 525
    .line 526
    goto/16 :goto_0

    .line 527
    .line 528
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 529
    .line 530
    .line 531
    move-result-object v1

    .line 532
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 537
    .line 538
    .line 539
    move-result v4

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 541
    .line 542
    .line 543
    move-result v5

    .line 544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 549
    .line 550
    .line 551
    move-result-object v6

    .line 552
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    .line 554
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

    .line 561
    .line 562
    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_0

    .line 567
    .line 568
    :pswitch_18
    invoke-interface {p0}, Landroid/os/IVold;->getUsedF2fsFileNode()J

    .line 569
    .line 570
    .line 571
    move-result-wide v0

    .line 572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    .line 574
    .line 575
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 576
    .line 577
    .line 578
    goto/16 :goto_0

    .line 579
    .line 580
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 581
    .line 582
    .line 583
    move-result-object v1

    .line 584
    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 585
    .line 586
    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 589
    .line 590
    .line 591
    invoke-interface {p0, v1}, Landroid/os/IVold;->runIdleDefrag(Landroid/os/IVoldTaskListener;)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    .line 596
    .line 597
    goto/16 :goto_0

    .line 598
    .line 599
    :pswitch_1a
    invoke-interface {p0}, Landroid/os/IVold;->getStorageRemainingLifetime()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    .line 605
    .line 606
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    .line 608
    .line 609
    goto/16 :goto_0

    .line 610
    .line 611
    :pswitch_1b
    invoke-interface {p0}, Landroid/os/IVold;->getStorageSize()J

    .line 612
    .line 613
    .line 614
    move-result-wide v0

    .line 615
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 619
    .line 620
    .line 621
    goto/16 :goto_0

    .line 622
    .line 623
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 628
    .line 629
    .line 630
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyDsuMetadataKey(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    .line 635
    .line 636
    goto/16 :goto_0

    .line 637
    .line 638
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v1

    .line 642
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 643
    .line 644
    .line 645
    move-result-object v3

    .line 646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    .line 648
    .line 649
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->bindMount(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    .line 654
    .line 655
    goto/16 :goto_0

    .line 656
    .line 657
    :pswitch_1e
    sget-object v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 658
    .line 659
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 664
    .line 665
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 666
    .line 667
    .line 668
    move-result v3

    .line 669
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 670
    .line 671
    .line 672
    move-result v4

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v5

    .line 677
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    .line 679
    .line 680
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->setIncFsMountOptions(Landroid/os/incremental/IncrementalFileSystemControlParcel;ZZLjava/lang/String;)V

    .line 681
    .line 682
    .line 683
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    .line 685
    .line 686
    goto/16 :goto_0

    .line 687
    .line 688
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    .line 694
    .line 695
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmountIncFs(Ljava/lang/String;)V

    .line 696
    .line 697
    .line 698
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 699
    .line 700
    .line 701
    goto/16 :goto_0

    .line 702
    .line 703
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object v1

    .line 707
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 708
    .line 709
    .line 710
    move-result-object v3

    .line 711
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 712
    .line 713
    .line 714
    move-result v4

    .line 715
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v5

    .line 719
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 720
    .line 721
    .line 722
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountIncFs(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/os/incremental/IncrementalFileSystemControlParcel;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    .line 728
    .line 729
    invoke-virtual {p3, v0, v8}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 730
    .line 731
    .line 732
    goto/16 :goto_0

    .line 733
    .line 734
    :pswitch_21
    invoke-interface {p0}, Landroid/os/IVold;->incFsEnabled()Z

    .line 735
    .line 736
    .line 737
    move-result v0

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    .line 740
    .line 741
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 742
    .line 743
    .line 744
    goto/16 :goto_0

    .line 745
    .line 746
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 747
    .line 748
    .line 749
    move-result v1

    .line 750
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 751
    .line 752
    .line 753
    move-result v3

    .line 754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 755
    .line 756
    .line 757
    move-result v4

    .line 758
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 759
    .line 760
    .line 761
    move-result v5

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 763
    .line 764
    .line 765
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 773
    .line 774
    .line 775
    goto/16 :goto_0

    .line 776
    .line 777
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v1

    .line 781
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 782
    .line 783
    .line 784
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyStubVolume(Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    .line 789
    .line 790
    goto/16 :goto_0

    .line 791
    .line 792
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v3

    .line 800
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 801
    .line 802
    .line 803
    move-result-object v4

    .line 804
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v5

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v6

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 813
    .line 814
    .line 815
    move-result v7

    .line 816
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 817
    .line 818
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

    .line 826
    .line 827
    .line 828
    move-result-object v0

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    .line 831
    .line 832
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 833
    .line 834
    .line 835
    goto/16 :goto_0

    .line 836
    .line 837
    :pswitch_25
    invoke-interface {p0}, Landroid/os/IVold;->earlyBootEnded()V

    .line 838
    .line 839
    .line 840
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    .line 842
    .line 843
    goto/16 :goto_0

    .line 844
    .line 845
    :pswitch_26
    invoke-interface {p0}, Landroid/os/IVold;->resetCheckpoint()V

    .line 846
    .line 847
    .line 848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    .line 850
    .line 851
    goto/16 :goto_0

    .line 852
    .line 853
    :pswitch_27
    invoke-interface {p0}, Landroid/os/IVold;->supportsFileCheckpoint()Z

    .line 854
    .line 855
    .line 856
    move-result v0

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    .line 859
    .line 860
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 861
    .line 862
    .line 863
    goto/16 :goto_0

    .line 864
    .line 865
    :pswitch_28
    invoke-interface {p0}, Landroid/os/IVold;->supportsBlockCheckpoint()Z

    .line 866
    .line 867
    .line 868
    move-result v0

    .line 869
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    .line 871
    .line 872
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 873
    .line 874
    .line 875
    goto/16 :goto_0

    .line 876
    .line 877
    :pswitch_29
    invoke-interface {p0}, Landroid/os/IVold;->supportsCheckpoint()Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 885
    .line 886
    .line 887
    goto/16 :goto_0

    .line 888
    .line 889
    :pswitch_2a
    invoke-interface {p0}, Landroid/os/IVold;->markBootAttempt()V

    .line 890
    .line 891
    .line 892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 893
    .line 894
    .line 895
    goto/16 :goto_0

    .line 896
    .line 897
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 902
    .line 903
    .line 904
    move-result v3

    .line 905
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 906
    .line 907
    .line 908
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 909
    .line 910
    .line 911
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    .line 913
    .line 914
    goto/16 :goto_0

    .line 915
    .line 916
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v1

    .line 920
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    .line 922
    .line 923
    invoke-interface {p0, v1}, Landroid/os/IVold;->restoreCheckpoint(Ljava/lang/String;)V

    .line 924
    .line 925
    .line 926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    .line 928
    .line 929
    goto/16 :goto_0

    .line 930
    .line 931
    :pswitch_2d
    invoke-interface {p0}, Landroid/os/IVold;->prepareCheckpoint()V

    .line 932
    .line 933
    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    .line 936
    .line 937
    goto/16 :goto_0

    .line 938
    .line 939
    :pswitch_2e
    invoke-interface {p0}, Landroid/os/IVold;->commitChanges()V

    .line 940
    .line 941
    .line 942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 943
    .line 944
    .line 945
    goto/16 :goto_0

    .line 946
    .line 947
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 952
    .line 953
    .line 954
    move-result v3

    .line 955
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    .line 957
    .line 958
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->abortChanges(Ljava/lang/String;Z)V

    .line 959
    .line 960
    .line 961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 962
    .line 963
    .line 964
    goto/16 :goto_0

    .line 965
    .line 966
    :pswitch_30
    invoke-interface {p0}, Landroid/os/IVold;->isCheckpointing()Z

    .line 967
    .line 968
    .line 969
    move-result v0

    .line 970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 971
    .line 972
    .line 973
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 974
    .line 975
    .line 976
    goto/16 :goto_0

    .line 977
    .line 978
    :pswitch_31
    invoke-interface {p0}, Landroid/os/IVold;->needsRollback()Z

    .line 979
    .line 980
    .line 981
    move-result v0

    .line 982
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    .line 984
    .line 985
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 986
    .line 987
    .line 988
    goto/16 :goto_0

    .line 989
    .line 990
    :pswitch_32
    invoke-interface {p0}, Landroid/os/IVold;->needsCheckpoint()Z

    .line 991
    .line 992
    .line 993
    move-result v0

    .line 994
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 995
    .line 996
    .line 997
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 998
    .line 999
    .line 1000
    goto/16 :goto_0

    .line 1001
    .line 1002
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1003
    .line 1004
    .line 1005
    move-result v1

    .line 1006
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    .line 1008
    .line 1009
    invoke-interface {p0, v1}, Landroid/os/IVold;->startCheckpoint(I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    .line 1014
    .line 1015
    goto/16 :goto_0

    .line 1016
    .line 1017
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1018
    .line 1019
    .line 1020
    move-result-object v1

    .line 1021
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v3

    .line 1025
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1026
    .line 1027
    .line 1028
    move-result v4

    .line 1029
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1030
    .line 1031
    .line 1032
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1033
    .line 1034
    .line 1035
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    .line 1037
    .line 1038
    goto/16 :goto_0

    .line 1039
    .line 1040
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1045
    .line 1046
    .line 1047
    move-result v3

    .line 1048
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v4

    .line 1052
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1053
    .line 1054
    .line 1055
    move-result v5

    .line 1056
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    .line 1058
    .line 1059
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1063
    .line 1064
    .line 1065
    goto/16 :goto_0

    .line 1066
    .line 1067
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1068
    .line 1069
    .line 1070
    move-result-object v1

    .line 1071
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1072
    .line 1073
    .line 1074
    move-result v3

    .line 1075
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1076
    .line 1077
    .line 1078
    move-result v4

    .line 1079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1080
    .line 1081
    .line 1082
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroyUserStorage(Ljava/lang/String;II)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_0

    .line 1089
    .line 1090
    :pswitch_37
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1095
    .line 1096
    .line 1097
    move-result v3

    .line 1098
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1099
    .line 1100
    .line 1101
    move-result v4

    .line 1102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1103
    .line 1104
    .line 1105
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->prepareUserStorage(Ljava/lang/String;II)V

    .line 1106
    .line 1107
    .line 1108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    .line 1110
    .line 1111
    goto/16 :goto_0

    .line 1112
    .line 1113
    :pswitch_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1114
    .line 1115
    .line 1116
    move-result v1

    .line 1117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1118
    .line 1119
    .line 1120
    invoke-interface {p0, v1}, Landroid/os/IVold;->lockCeStorage(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1124
    .line 1125
    .line 1126
    goto/16 :goto_0

    .line 1127
    .line 1128
    :pswitch_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1129
    .line 1130
    .line 1131
    move-result v1

    .line 1132
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    .line 1138
    .line 1139
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->unlockCeStorage(I[B)V

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1143
    .line 1144
    .line 1145
    goto/16 :goto_0

    .line 1146
    .line 1147
    :pswitch_3a
    invoke-interface {p0}, Landroid/os/IVold;->getUnlockedUsers()[I

    .line 1148
    .line 1149
    .line 1150
    move-result-object v0

    .line 1151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1155
    .line 1156
    .line 1157
    goto/16 :goto_0

    .line 1158
    .line 1159
    :pswitch_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v1

    .line 1163
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1164
    .line 1165
    .line 1166
    move-result v3

    .line 1167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1168
    .line 1169
    .line 1170
    move-result v4

    .line 1171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1172
    .line 1173
    .line 1174
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->isPassUnlocked(Ljava/lang/String;II)Z

    .line 1175
    .line 1176
    .line 1177
    move-result v0

    .line 1178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1182
    .line 1183
    .line 1184
    goto/16 :goto_0

    .line 1185
    .line 1186
    :pswitch_3c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v1

    .line 1190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1191
    .line 1192
    .line 1193
    move-result v3

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1195
    .line 1196
    .line 1197
    move-result v4

    .line 1198
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1199
    .line 1200
    .line 1201
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->getPassStorage(Ljava/lang/String;II)Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v0

    .line 1205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    .line 1207
    .line 1208
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1209
    .line 1210
    .line 1211
    goto/16 :goto_0

    .line 1212
    .line 1213
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1214
    .line 1215
    .line 1216
    move-result-object v1

    .line 1217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1218
    .line 1219
    .line 1220
    move-result v3

    .line 1221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1222
    .line 1223
    .line 1224
    move-result v4

    .line 1225
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1226
    .line 1227
    .line 1228
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->unlockPassStorage(Ljava/lang/String;II)I

    .line 1229
    .line 1230
    .line 1231
    move-result v0

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    .line 1237
    .line 1238
    goto/16 :goto_0

    .line 1239
    .line 1240
    :pswitch_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1245
    .line 1246
    .line 1247
    move-result v3

    .line 1248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1249
    .line 1250
    .line 1251
    move-result v4

    .line 1252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    .line 1254
    .line 1255
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->lockPassStorage(Ljava/lang/String;II)I

    .line 1256
    .line 1257
    .line 1258
    move-result v0

    .line 1259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    .line 1261
    .line 1262
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    .line 1264
    .line 1265
    goto/16 :goto_0

    .line 1266
    .line 1267
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v1

    .line 1271
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1272
    .line 1273
    .line 1274
    move-result v3

    .line 1275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1276
    .line 1277
    .line 1278
    move-result v4

    .line 1279
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    .line 1281
    .line 1282
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->destroyPassStorage(Ljava/lang/String;II)I

    .line 1283
    .line 1284
    .line 1285
    move-result v0

    .line 1286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1290
    .line 1291
    .line 1292
    goto/16 :goto_0

    .line 1293
    .line 1294
    :pswitch_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1295
    .line 1296
    .line 1297
    move-result-object v1

    .line 1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1299
    .line 1300
    .line 1301
    move-result v3

    .line 1302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1303
    .line 1304
    .line 1305
    move-result v4

    .line 1306
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1307
    .line 1308
    .line 1309
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->createPassStorage(Ljava/lang/String;II)I

    .line 1310
    .line 1311
    .line 1312
    move-result v0

    .line 1313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1317
    .line 1318
    .line 1319
    goto/16 :goto_0

    .line 1320
    .line 1321
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1322
    .line 1323
    .line 1324
    move-result v1

    .line 1325
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1326
    .line 1327
    .line 1328
    move-result-object v3

    .line 1329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    .line 1331
    .line 1332
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setCeStorageProtection(I[B)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    .line 1337
    .line 1338
    goto/16 :goto_0

    .line 1339
    .line 1340
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1341
    .line 1342
    .line 1343
    move-result v1

    .line 1344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1345
    .line 1346
    .line 1347
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyUserStorageKeys(I)V

    .line 1348
    .line 1349
    .line 1350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1351
    .line 1352
    .line 1353
    goto/16 :goto_0

    .line 1354
    .line 1355
    :pswitch_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1360
    .line 1361
    .line 1362
    move-result v3

    .line 1363
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1364
    .line 1365
    .line 1366
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->createUserStorageKeys(IZ)V

    .line 1367
    .line 1368
    .line 1369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    .line 1371
    .line 1372
    goto/16 :goto_0

    .line 1373
    .line 1374
    :pswitch_44
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1379
    .line 1380
    .line 1381
    invoke-interface {p0, v1}, Landroid/os/IVold;->setStorageBindingSeed([B)V

    .line 1382
    .line 1383
    .line 1384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    .line 1386
    .line 1387
    goto/16 :goto_0

    .line 1388
    .line 1389
    :pswitch_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v1

    .line 1393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v3

    .line 1397
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1398
    .line 1399
    .line 1400
    move-result v4

    .line 1401
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1402
    .line 1403
    .line 1404
    move-result-object v5

    .line 1405
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1406
    .line 1407
    .line 1408
    move-result v6

    .line 1409
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v7

    .line 1413
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    .line 1415
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

    .line 1423
    .line 1424
    .line 1425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    .line 1427
    .line 1428
    goto/16 :goto_0

    .line 1429
    .line 1430
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1431
    .line 1432
    .line 1433
    move-result-object v1

    .line 1434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1435
    .line 1436
    .line 1437
    move-result-object v3

    .line 1438
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1439
    .line 1440
    .line 1441
    move-result v4

    .line 1442
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v5

    .line 1446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1447
    .line 1448
    .line 1449
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mountFstab(Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    .line 1450
    .line 1451
    .line 1452
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    .line 1454
    .line 1455
    goto/16 :goto_0

    .line 1456
    .line 1457
    :pswitch_47
    invoke-interface {p0}, Landroid/os/IVold;->initUser0()V

    .line 1458
    .line 1459
    .line 1460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    .line 1462
    .line 1463
    goto/16 :goto_0

    .line 1464
    .line 1465
    :pswitch_48
    invoke-interface {p0}, Landroid/os/IVold;->fbeEnable()V

    .line 1466
    .line 1467
    .line 1468
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1469
    .line 1470
    .line 1471
    goto/16 :goto_0

    .line 1472
    .line 1473
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v1

    .line 1477
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1478
    .line 1479
    .line 1480
    move-result v3

    .line 1481
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1482
    .line 1483
    .line 1484
    move-result v4

    .line 1485
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1486
    .line 1487
    .line 1488
    move-result v5

    .line 1489
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1490
    .line 1491
    .line 1492
    move-result-object v6

    .line 1493
    invoke-static {v6}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1494
    .line 1495
    .line 1496
    move-result-object v6

    .line 1497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1498
    .line 1499
    .line 1500
    move-result-object v7

    .line 1501
    invoke-static {v7}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v7

    .line 1505
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1506
    .line 1507
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

    .line 1515
    .line 1516
    .line 1517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    .line 1519
    .line 1520
    goto/16 :goto_0

    .line 1521
    .line 1522
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1523
    .line 1524
    .line 1525
    move-result v1

    .line 1526
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1527
    .line 1528
    .line 1529
    move-result v3

    .line 1530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1531
    .line 1532
    .line 1533
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->unmountAppFuse(II)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_0

    .line 1540
    .line 1541
    :pswitch_4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1542
    .line 1543
    .line 1544
    move-result v1

    .line 1545
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1546
    .line 1547
    .line 1548
    move-result v3

    .line 1549
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1550
    .line 1551
    .line 1552
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->mountAppFuse(II)Ljava/io/FileDescriptor;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v0

    .line 1556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    .line 1558
    .line 1559
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1560
    .line 1561
    .line 1562
    goto/16 :goto_0

    .line 1563
    .line 1564
    :pswitch_4c
    invoke-interface {p0}, Landroid/os/IVold;->getWriteAmount()I

    .line 1565
    .line 1566
    .line 1567
    move-result v0

    .line 1568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    .line 1573
    .line 1574
    goto/16 :goto_0

    .line 1575
    .line 1576
    :pswitch_4d
    invoke-interface {p0}, Landroid/os/IVold;->refreshLatestWrite()V

    .line 1577
    .line 1578
    .line 1579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    .line 1581
    .line 1582
    goto/16 :goto_0

    .line 1583
    .line 1584
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1585
    .line 1586
    .line 1587
    move-result v1

    .line 1588
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1589
    .line 1590
    .line 1591
    move-result v3

    .line 1592
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 1593
    .line 1594
    .line 1595
    move-result v4

    .line 1596
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    .line 1597
    .line 1598
    .line 1599
    move-result v5

    .line 1600
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1601
    .line 1602
    .line 1603
    move-result v6

    .line 1604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1605
    .line 1606
    .line 1607
    move-result v7

    .line 1608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1609
    .line 1610
    .line 1611
    move-result v9

    .line 1612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1613
    .line 1614
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

    .line 1623
    .line 1624
    .line 1625
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    .line 1627
    .line 1628
    goto/16 :goto_0

    .line 1629
    .line 1630
    :pswitch_4f
    invoke-interface {p0}, Landroid/os/IVold;->getStorageLifeTime()I

    .line 1631
    .line 1632
    .line 1633
    move-result v0

    .line 1634
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    .line 1639
    .line 1640
    goto/16 :goto_0

    .line 1641
    .line 1642
    :pswitch_50
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1643
    .line 1644
    .line 1645
    move-result-object v1

    .line 1646
    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v1

    .line 1650
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1651
    .line 1652
    .line 1653
    invoke-interface {p0, v1}, Landroid/os/IVold;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1657
    .line 1658
    .line 1659
    goto/16 :goto_0

    .line 1660
    .line 1661
    :pswitch_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 1662
    .line 1663
    .line 1664
    move-result v1

    .line 1665
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1666
    .line 1667
    .line 1668
    move-result-object v3

    .line 1669
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1670
    .line 1671
    .line 1672
    move-result-object v3

    .line 1673
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1674
    .line 1675
    .line 1676
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->runIdleMaint(ZLandroid/os/IVoldTaskListener;)V

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    .line 1681
    .line 1682
    goto/16 :goto_0

    .line 1683
    .line 1684
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1685
    .line 1686
    .line 1687
    move-result v1

    .line 1688
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1689
    .line 1690
    .line 1691
    move-result-object v3

    .line 1692
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1693
    .line 1694
    .line 1695
    move-result-object v3

    .line 1696
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1697
    .line 1698
    .line 1699
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 1700
    .line 1701
    .line 1702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1703
    .line 1704
    .line 1705
    goto/16 :goto_0

    .line 1706
    .line 1707
    :pswitch_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1708
    .line 1709
    .line 1710
    move-result-object v1

    .line 1711
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1712
    .line 1713
    .line 1714
    invoke-interface {p0, v1}, Landroid/os/IVold;->destroyObb(Ljava/lang/String;)V

    .line 1715
    .line 1716
    .line 1717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    .line 1719
    .line 1720
    goto/16 :goto_0

    .line 1721
    .line 1722
    :pswitch_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v1

    .line 1726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1727
    .line 1728
    .line 1729
    move-result v3

    .line 1730
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1731
    .line 1732
    .line 1733
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->createObb(Ljava/lang/String;I)Ljava/lang/String;

    .line 1734
    .line 1735
    .line 1736
    move-result-object v0

    .line 1737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1741
    .line 1742
    .line 1743
    goto/16 :goto_0

    .line 1744
    .line 1745
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1746
    .line 1747
    .line 1748
    move-result-object v1

    .line 1749
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1750
    .line 1751
    .line 1752
    move-result v3

    .line 1753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1754
    .line 1755
    .line 1756
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->ensureAppDirsCreated([Ljava/lang/String;I)V

    .line 1757
    .line 1758
    .line 1759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    .line 1761
    .line 1762
    goto/16 :goto_0

    .line 1763
    .line 1764
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1765
    .line 1766
    .line 1767
    move-result-object v1

    .line 1768
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1769
    .line 1770
    .line 1771
    move-result v3

    .line 1772
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1773
    .line 1774
    .line 1775
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V

    .line 1776
    .line 1777
    .line 1778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1779
    .line 1780
    .line 1781
    goto/16 :goto_0

    .line 1782
    .line 1783
    :pswitch_57
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1784
    .line 1785
    .line 1786
    move-result-object v1

    .line 1787
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1788
    .line 1789
    .line 1790
    move-result v3

    .line 1791
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    .line 1793
    .line 1794
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 1795
    .line 1796
    .line 1797
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1798
    .line 1799
    .line 1800
    goto/16 :goto_0

    .line 1801
    .line 1802
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1803
    .line 1804
    .line 1805
    move-result v1

    .line 1806
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1807
    .line 1808
    .line 1809
    move-result v3

    .line 1810
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1811
    .line 1812
    .line 1813
    move-result-object v4

    .line 1814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1815
    .line 1816
    .line 1817
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->unmountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1818
    .line 1819
    .line 1820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1821
    .line 1822
    .line 1823
    goto/16 :goto_0

    .line 1824
    .line 1825
    :pswitch_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1826
    .line 1827
    .line 1828
    move-result v1

    .line 1829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1830
    .line 1831
    .line 1832
    move-result v3

    .line 1833
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 1834
    .line 1835
    .line 1836
    move-result-object v4

    .line 1837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1838
    .line 1839
    .line 1840
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->remountAppStorageDirs(II[Ljava/lang/String;)V

    .line 1841
    .line 1842
    .line 1843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1844
    .line 1845
    .line 1846
    goto/16 :goto_0

    .line 1847
    .line 1848
    :pswitch_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1849
    .line 1850
    .line 1851
    move-result v1

    .line 1852
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1853
    .line 1854
    .line 1855
    move-result v3

    .line 1856
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1857
    .line 1858
    .line 1859
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->remountUid(II)V

    .line 1860
    .line 1861
    .line 1862
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    .line 1864
    .line 1865
    goto/16 :goto_0

    .line 1866
    .line 1867
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1868
    .line 1869
    .line 1870
    move-result-object v1

    .line 1871
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1872
    .line 1873
    .line 1874
    move-result-object v3

    .line 1875
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1876
    .line 1877
    .line 1878
    move-result-object v4

    .line 1879
    invoke-static {v4}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1880
    .line 1881
    .line 1882
    move-result-object v4

    .line 1883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1884
    .line 1885
    .line 1886
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1887
    .line 1888
    .line 1889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    .line 1891
    .line 1892
    goto/16 :goto_0

    .line 1893
    .line 1894
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1895
    .line 1896
    .line 1897
    move-result-object v1

    .line 1898
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v3

    .line 1902
    invoke-static {v3}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    .line 1903
    .line 1904
    .line 1905
    move-result-object v3

    .line 1906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1907
    .line 1908
    .line 1909
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 1910
    .line 1911
    .line 1912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1913
    .line 1914
    .line 1915
    goto/16 :goto_0

    .line 1916
    .line 1917
    :pswitch_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1918
    .line 1919
    .line 1920
    move-result-object v1

    .line 1921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1922
    .line 1923
    .line 1924
    move-result-object v3

    .line 1925
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1926
    .line 1927
    .line 1928
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 1929
    .line 1930
    .line 1931
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1932
    .line 1933
    .line 1934
    goto/16 :goto_0

    .line 1935
    .line 1936
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1937
    .line 1938
    .line 1939
    move-result-object v1

    .line 1940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1941
    .line 1942
    .line 1943
    invoke-interface {p0, v1}, Landroid/os/IVold;->unmount(Ljava/lang/String;)V

    .line 1944
    .line 1945
    .line 1946
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1947
    .line 1948
    .line 1949
    goto/16 :goto_0

    .line 1950
    .line 1951
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1952
    .line 1953
    .line 1954
    move-result-object v1

    .line 1955
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1956
    .line 1957
    .line 1958
    move-result v3

    .line 1959
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 1960
    .line 1961
    .line 1962
    move-result v4

    .line 1963
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 1964
    .line 1965
    .line 1966
    move-result-object v5

    .line 1967
    invoke-static {v5}, Landroid/os/IVoldMountCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldMountCallback;

    .line 1968
    .line 1969
    .line 1970
    move-result-object v5

    .line 1971
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1972
    .line 1973
    .line 1974
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/os/IVold;->mount(Ljava/lang/String;IILandroid/os/IVoldMountCallback;)V

    .line 1975
    .line 1976
    .line 1977
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1978
    .line 1979
    .line 1980
    goto/16 :goto_0

    .line 1981
    .line 1982
    :pswitch_60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1983
    .line 1984
    .line 1985
    move-result-object v1

    .line 1986
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 1987
    .line 1988
    .line 1989
    move-result-object v3

    .line 1990
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1991
    .line 1992
    .line 1993
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 1994
    .line 1995
    .line 1996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    .line 1998
    .line 1999
    goto/16 :goto_0

    .line 2000
    .line 2001
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2006
    .line 2007
    .line 2008
    move-result v3

    .line 2009
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2010
    .line 2011
    .line 2012
    move-result v4

    .line 2013
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2014
    .line 2015
    .line 2016
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->partition(Ljava/lang/String;II)V

    .line 2017
    .line 2018
    .line 2019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    .line 2021
    .line 2022
    goto/16 :goto_0

    .line 2023
    .line 2024
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    .line 2025
    .line 2026
    .line 2027
    move-result v1

    .line 2028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2029
    .line 2030
    .line 2031
    invoke-interface {p0, v1}, Landroid/os/IVold;->onSecureKeyguardStateChanged(Z)V

    .line 2032
    .line 2033
    .line 2034
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2035
    .line 2036
    .line 2037
    goto/16 :goto_0

    .line 2038
    .line 2039
    :pswitch_63
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2040
    .line 2041
    .line 2042
    move-result-object v1

    .line 2043
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2044
    .line 2045
    .line 2046
    move-result-object v3

    .line 2047
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2048
    .line 2049
    .line 2050
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addSandboxIds([I[Ljava/lang/String;)V

    .line 2051
    .line 2052
    .line 2053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2054
    .line 2055
    .line 2056
    goto/16 :goto_0

    .line 2057
    .line 2058
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    .line 2059
    .line 2060
    .line 2061
    move-result-object v1

    .line 2062
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    .line 2063
    .line 2064
    .line 2065
    move-result-object v3

    .line 2066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    .line 2068
    .line 2069
    invoke-interface {p0, v1, v3}, Landroid/os/IVold;->addAppIds([Ljava/lang/String;[I)V

    .line 2070
    .line 2071
    .line 2072
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2073
    .line 2074
    .line 2075
    goto/16 :goto_0

    .line 2076
    .line 2077
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2078
    .line 2079
    .line 2080
    move-result v1

    .line 2081
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2082
    .line 2083
    .line 2084
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStopped(I)V

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2088
    .line 2089
    .line 2090
    goto :goto_0

    .line 2091
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2092
    .line 2093
    .line 2094
    move-result v1

    .line 2095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2096
    .line 2097
    .line 2098
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserStarted(I)V

    .line 2099
    .line 2100
    .line 2101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    .line 2103
    .line 2104
    goto :goto_0

    .line 2105
    :pswitch_67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2106
    .line 2107
    .line 2108
    move-result v1

    .line 2109
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2110
    .line 2111
    .line 2112
    invoke-interface {p0, v1}, Landroid/os/IVold;->onUserRemoved(I)V

    .line 2113
    .line 2114
    .line 2115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2116
    .line 2117
    .line 2118
    goto :goto_0

    .line 2119
    :pswitch_68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2120
    .line 2121
    .line 2122
    move-result v1

    .line 2123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2124
    .line 2125
    .line 2126
    move-result v3

    .line 2127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 2128
    .line 2129
    .line 2130
    move-result v4

    .line 2131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2132
    .line 2133
    .line 2134
    invoke-interface {p0, v1, v3, v4}, Landroid/os/IVold;->onUserAdded(III)V

    .line 2135
    .line 2136
    .line 2137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2138
    .line 2139
    .line 2140
    goto :goto_0

    .line 2141
    :pswitch_69
    invoke-interface {p0}, Landroid/os/IVold;->shutdown()V

    .line 2142
    .line 2143
    .line 2144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    .line 2146
    .line 2147
    goto :goto_0

    .line 2148
    :pswitch_6a
    invoke-interface {p0}, Landroid/os/IVold;->reset()V

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    .line 2153
    .line 2154
    goto :goto_0

    .line 2155
    :pswitch_6b
    invoke-interface {p0}, Landroid/os/IVold;->monitor()V

    .line 2156
    .line 2157
    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    .line 2160
    .line 2161
    goto :goto_0

    .line 2162
    :pswitch_6c
    invoke-interface {p0}, Landroid/os/IVold;->abortFuse()V

    .line 2163
    .line 2164
    .line 2165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    .line 2167
    .line 2168
    goto :goto_0

    .line 2169
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 2170
    .line 2171
    .line 2172
    move-result-object v1

    .line 2173
    invoke-static {v1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v1

    .line 2177
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2178
    .line 2179
    .line 2180
    invoke-interface {p0, v1}, Landroid/os/IVold;->setListener(Landroid/os/IVoldListener;)V

    .line 2181
    .line 2182
    .line 2183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2184
    .line 2185
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
