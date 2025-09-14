.class public final Landroid/hardware/health/V2_0/HealthInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public batteryCurrentAverage:I

.field public final diskStats:Ljava/util/ArrayList;

.field public final legacy:Landroid/hardware/health/V1_0/HealthInfo;

.field public final storageInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 12
    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 14
    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 16
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 18
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 20
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 22
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 24
    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 26
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 28
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 30
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 32
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 34
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 36
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 38
    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 40
    new-instance v2, Ljava/lang/String;

    .line 42
    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 45
    iput-object v2, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 49
    iput v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 65
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 8
    return v1

    .line 9
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    move-result-object v2

    .line 13
    const-class v3, Landroid/hardware/health/V2_0/HealthInfo;

    .line 15
    if-eq v2, v3, :cond_2

    .line 17
    return v1

    .line 18
    :cond_2
    check-cast p1, Landroid/hardware/health/V2_0/HealthInfo;

    .line 20
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 22
    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 24
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_3

    .line 30
    return v1

    .line 31
    :cond_3
    iget v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 33
    iget v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 35
    if-eq v2, v3, :cond_4

    .line 37
    return v1

    .line 38
    :cond_4
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 40
    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 42
    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_5

    .line 48
    return v1

    .line 49
    :cond_5
    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 51
    iget-object p1, p1, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 53
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_6

    .line 59
    return v1

    .line 60
    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 3
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 13
    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 19
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 22
    move-result v2

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object v2

    .line 27
    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 29
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    .line 32
    move-result p0

    .line 33
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    .line 40
    move-result-object p0

    .line 41
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 44
    move-result p0

    .line 45
    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V
    .locals 34

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v9, p1

    .line 5
    move-object/from16 v10, p2

    .line 7
    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-wide/16 v11, 0x0

    .line 14
    invoke-virtual {v10, v11, v12}, Landroid/os/HwBlob;->getBool(J)Z

    .line 17
    move-result v2

    .line 18
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    .line 20
    const-wide/16 v2, 0x1

    .line 22
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 25
    move-result v2

    .line 26
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    .line 28
    const-wide/16 v2, 0x2

    .line 30
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 33
    move-result v2

    .line 34
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    .line 36
    const-wide/16 v2, 0x4

    .line 38
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 41
    move-result v2

    .line 42
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    .line 44
    const-wide/16 v13, 0x8

    .line 46
    invoke-virtual {v10, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    .line 49
    move-result v2

    .line 50
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    .line 52
    const-wide/16 v2, 0xc

    .line 54
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 57
    move-result v2

    .line 58
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    .line 60
    const-wide/16 v6, 0x10

    .line 62
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 65
    move-result v2

    .line 66
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    .line 68
    const-wide/16 v2, 0x14

    .line 70
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    .line 73
    move-result v2

    .line 74
    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    .line 76
    const-wide/16 v4, 0x18

    .line 78
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 81
    move-result v2

    .line 82
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    .line 84
    const-wide/16 v2, 0x1c

    .line 86
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 89
    move-result v8

    .line 90
    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    .line 92
    const-wide/16 v13, 0x20

    .line 94
    invoke-virtual {v10, v13, v14}, Landroid/os/HwBlob;->getInt32(J)I

    .line 97
    move-result v8

    .line 98
    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    .line 100
    const-wide/16 v2, 0x24

    .line 102
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 105
    move-result v2

    .line 106
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    .line 108
    const-wide/16 v2, 0x28

    .line 110
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 113
    move-result v8

    .line 114
    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    .line 116
    const-wide/16 v2, 0x2c

    .line 118
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 121
    move-result v2

    .line 122
    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    .line 124
    const-wide/16 v2, 0x30

    .line 126
    invoke-virtual {v10, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    .line 129
    move-result v8

    .line 130
    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    .line 132
    const-wide/16 v6, 0x38

    .line 134
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 137
    move-result-object v8

    .line 138
    iput-object v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 140
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    .line 143
    move-result-object v1

    .line 144
    array-length v1, v1

    .line 145
    add-int/lit8 v1, v1, 0x1

    .line 147
    int-to-long v2, v1

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 151
    move-result-wide v25

    .line 152
    const/4 v8, 0x0

    .line 153
    move-object/from16 v1, p1

    .line 155
    const-wide/16 v17, 0x1c

    .line 157
    const-wide/16 v19, 0x28

    .line 159
    const-wide/16 v23, 0x30

    .line 161
    move-wide/from16 v27, v4

    .line 163
    move-wide/from16 v4, v25

    .line 165
    const-wide/16 v21, 0x10

    .line 167
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 170
    const-wide/16 v6, 0x48

    .line 172
    invoke-virtual {v10, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    .line 175
    move-result v1

    .line 176
    iput v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 178
    const-wide/16 v4, 0x58

    .line 180
    invoke-virtual {v10, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    .line 183
    move-result v8

    .line 184
    mul-int/lit8 v1, v8, 0x70

    .line 186
    int-to-long v2, v1

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 190
    move-result-wide v25

    .line 191
    const/16 v29, 0x1

    .line 193
    const-wide/16 v30, 0x50

    .line 195
    move-object/from16 v1, p1

    .line 197
    move-wide/from16 v32, v4

    .line 199
    move-wide/from16 v4, v25

    .line 201
    move-wide/from16 v25, v6

    .line 203
    move-wide/from16 v6, v30

    .line 205
    move v15, v8

    .line 206
    move/from16 v8, v29

    .line 208
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 211
    move-result-object v1

    .line 212
    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 214
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v2, 0x0

    .line 218
    :goto_0
    if-ge v2, v15, :cond_0

    .line 220
    new-instance v3, Landroid/hardware/health/V2_0/DiskStats;

    .line 222
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 227
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 229
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 231
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 233
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 235
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 237
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 239
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 241
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 243
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 245
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 247
    new-instance v4, Landroid/hardware/health/V2_0/StorageAttribute;

    .line 249
    invoke-direct {v4}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    .line 252
    iput-object v4, v3, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 254
    mul-int/lit8 v5, v2, 0x70

    .line 256
    int-to-long v5, v5

    .line 257
    invoke-virtual {v1, v5, v6}, Landroid/os/HwBlob;->getInt64(J)J

    .line 260
    move-result-wide v11

    .line 261
    iput-wide v11, v3, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 263
    const-wide/16 v11, 0x8

    .line 265
    add-long v8, v5, v11

    .line 267
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt64(J)J

    .line 270
    move-result-wide v7

    .line 271
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 273
    add-long v7, v5, v21

    .line 275
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 278
    move-result-wide v7

    .line 279
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 281
    add-long v7, v5, v27

    .line 283
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 286
    move-result-wide v7

    .line 287
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 289
    add-long v7, v5, v13

    .line 291
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 294
    move-result-wide v7

    .line 295
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 297
    add-long v7, v5, v19

    .line 299
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 302
    move-result-wide v7

    .line 303
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 305
    add-long v7, v5, v23

    .line 307
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 310
    move-result-wide v7

    .line 311
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 313
    const-wide/16 v7, 0x38

    .line 315
    add-long/2addr v7, v5

    .line 316
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 319
    move-result-wide v7

    .line 320
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 322
    const-wide/16 v7, 0x40

    .line 324
    add-long/2addr v7, v5

    .line 325
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 328
    move-result-wide v7

    .line 329
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 331
    add-long v7, v5, v25

    .line 333
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 336
    move-result-wide v7

    .line 337
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 339
    const-wide/16 v7, 0x50

    .line 341
    add-long/2addr v7, v5

    .line 342
    invoke-virtual {v1, v7, v8}, Landroid/os/HwBlob;->getInt64(J)J

    .line 345
    move-result-wide v7

    .line 346
    iput-wide v7, v3, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 348
    add-long v5, v5, v32

    .line 350
    move-object/from16 v9, p1

    .line 352
    invoke-virtual {v4, v9, v1, v5, v6}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 355
    iget-object v4, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    add-int/lit8 v2, v2, 0x1

    .line 362
    const-wide/16 v11, 0x0

    .line 364
    goto/16 :goto_0

    .line 366
    :cond_0
    const-wide/16 v1, 0x68

    .line 368
    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 371
    move-result v11

    .line 372
    mul-int/lit8 v1, v11, 0x30

    .line 374
    int-to-long v2, v1

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    .line 378
    move-result-wide v4

    .line 379
    const/4 v8, 0x1

    .line 380
    const-wide/16 v6, 0x60

    .line 382
    move-object/from16 v1, p1

    .line 384
    const/4 v10, 0x0

    .line 385
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 388
    move-result-object v12

    .line 389
    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 391
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 394
    move v15, v10

    .line 395
    :goto_1
    if-ge v15, v11, :cond_1

    .line 397
    new-instance v8, Landroid/hardware/health/V2_0/StorageInfo;

    .line 399
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 402
    new-instance v1, Landroid/hardware/health/V2_0/StorageAttribute;

    .line 404
    invoke-direct {v1}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    .line 407
    iput-object v1, v8, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    .line 409
    iput-short v10, v8, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 411
    iput-short v10, v8, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 413
    iput-short v10, v8, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 415
    new-instance v2, Ljava/lang/String;

    .line 417
    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    .line 420
    iput-object v2, v8, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 422
    mul-int/lit8 v2, v15, 0x30

    .line 424
    int-to-long v2, v2

    .line 425
    invoke-virtual {v1, v9, v12, v2, v3}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 428
    add-long v4, v2, v27

    .line 430
    invoke-virtual {v12, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    .line 433
    move-result v1

    .line 434
    iput-short v1, v8, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 436
    const-wide/16 v4, 0x1a

    .line 438
    add-long/2addr v4, v2

    .line 439
    invoke-virtual {v12, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    .line 442
    move-result v1

    .line 443
    iput-short v1, v8, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 445
    add-long v4, v2, v17

    .line 447
    invoke-virtual {v12, v4, v5}, Landroid/os/HwBlob;->getInt16(J)S

    .line 450
    move-result v1

    .line 451
    iput-short v1, v8, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 453
    add-long v6, v2, v13

    .line 455
    invoke-virtual {v12, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    .line 458
    move-result-object v1

    .line 459
    iput-object v1, v8, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 461
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 464
    move-result-object v1

    .line 465
    array-length v1, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    .line 468
    int-to-long v2, v1

    .line 469
    invoke-virtual {v12}, Landroid/os/HwBlob;->handle()J

    .line 472
    move-result-wide v4

    .line 473
    const/16 v16, 0x0

    .line 475
    move-object/from16 v1, p1

    .line 477
    move-object v10, v8

    .line 478
    move/from16 v8, v16

    .line 480
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 483
    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 485
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    add-int/lit8 v15, v15, 0x1

    .line 490
    const/4 v10, 0x0

    .line 491
    goto :goto_1

    .line 492
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "{.legacy = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ", .batteryCurrentAverage = "

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    const-string v1, ", .diskStats = "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, ", .storageInfos = "

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string/jumbo p0, "}"

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method
