.class public abstract Lvendor/samsung/hardware/health/Translate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;
    .locals 10

    .line 1
    new-instance v0, Lvendor/samsung/hardware/health/SehHealthInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lvendor/samsung/hardware/health/SehHealthInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 7
    .line 8
    new-instance v2, Landroid/hardware/health/HealthInfo;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 14
    .line 15
    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 16
    .line 17
    invoke-static {v2, v3}, Landroid/hardware/health/Translate;->h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 18
    .line 19
    .line 20
    iget-object v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 21
    .line 22
    iget v4, v3, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    .line 23
    .line 24
    iput v4, v2, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 25
    .line 26
    iget-object v3, v3, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    new-array v3, v3, [Landroid/hardware/health/DiskStats;

    .line 33
    .line 34
    iput-object v3, v2, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    :goto_0
    iget-object v5, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 39
    .line 40
    iget-object v5, v5, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ge v4, v5, :cond_0

    .line 47
    .line 48
    iget-object v5, v2, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    .line 49
    .line 50
    iget-object v6, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 51
    .line 52
    iget-object v6, v6, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v6

    .line 58
    check-cast v6, Landroid/hardware/health/V2_0/DiskStats;

    .line 59
    .line 60
    new-instance v7, Landroid/hardware/health/DiskStats;

    .line 61
    .line 62
    invoke-direct {v7}, Landroid/hardware/health/DiskStats;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    .line 66
    .line 67
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->reads:J

    .line 68
    .line 69
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    .line 70
    .line 71
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readMerges:J

    .line 72
    .line 73
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    .line 74
    .line 75
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readSectors:J

    .line 76
    .line 77
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    .line 78
    .line 79
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->readTicks:J

    .line 80
    .line 81
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    .line 82
    .line 83
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writes:J

    .line 84
    .line 85
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    .line 86
    .line 87
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeMerges:J

    .line 88
    .line 89
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    .line 90
    .line 91
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeSectors:J

    .line 92
    .line 93
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    .line 94
    .line 95
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->writeTicks:J

    .line 96
    .line 97
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    .line 98
    .line 99
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioInFlight:J

    .line 100
    .line 101
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    .line 102
    .line 103
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioTicks:J

    .line 104
    .line 105
    iget-wide v8, v6, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    .line 106
    .line 107
    iput-wide v8, v7, Landroid/hardware/health/DiskStats;->ioInQueue:J

    .line 108
    .line 109
    aput-object v7, v5, v4

    .line 110
    .line 111
    add-int/lit8 v4, v4, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_0
    iget-object v4, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 115
    .line 116
    iget-object v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    new-array v4, v4, [Landroid/hardware/health/StorageInfo;

    .line 123
    .line 124
    iput-object v4, v2, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 125
    .line 126
    :goto_1
    iget-object v4, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 127
    .line 128
    iget-object v4, v4, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    if-ge v3, v4, :cond_1

    .line 135
    .line 136
    iget-object v4, v2, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    .line 137
    .line 138
    iget-object v5, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 139
    .line 140
    iget-object v5, v5, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    check-cast v5, Landroid/hardware/health/V2_0/StorageInfo;

    .line 147
    .line 148
    new-instance v6, Landroid/hardware/health/StorageInfo;

    .line 149
    .line 150
    invoke-direct {v6}, Landroid/hardware/health/StorageInfo;-><init>()V

    .line 151
    .line 152
    .line 153
    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    .line 154
    .line 155
    iput v7, v6, Landroid/hardware/health/StorageInfo;->eol:I

    .line 156
    .line 157
    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    .line 158
    .line 159
    iput v7, v6, Landroid/hardware/health/StorageInfo;->lifetimeA:I

    .line 160
    .line 161
    iget-short v7, v5, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    .line 162
    .line 163
    iput v7, v6, Landroid/hardware/health/StorageInfo;->lifetimeB:I

    .line 164
    .line 165
    iget-object v5, v5, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    .line 166
    .line 167
    iput-object v5, v6, Landroid/hardware/health/StorageInfo;->version:Ljava/lang/String;

    .line 168
    .line 169
    aput-object v6, v4, v3

    .line 170
    .line 171
    add-int/lit8 v3, v3, 0x1

    .line 172
    .line 173
    goto :goto_1

    .line 174
    :cond_1
    iget v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 175
    .line 176
    iput v3, v2, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 177
    .line 178
    iget-wide v3, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 179
    .line 180
    iput-wide v3, v2, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 181
    .line 182
    iget v1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 183
    .line 184
    iput v1, v2, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    .line 185
    .line 186
    iput-object v2, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->aospHealthInfo:Landroid/hardware/health/HealthInfo;

    .line 187
    .line 188
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentNow:I

    .line 189
    .line 190
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentNow:I

    .line 191
    .line 192
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryOnline:I

    .line 193
    .line 194
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryOnline:I

    .line 195
    .line 196
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryChargeType:I

    .line 197
    .line 198
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryChargeType:I

    .line 199
    .line 200
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 201
    .line 202
    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryPowerSharingOnline:Z

    .line 203
    .line 204
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerPogoOnline:Z

    .line 205
    .line 206
    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerPogoOnline:Z

    .line 207
    .line 208
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 209
    .line 210
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryHighVoltageCharger:I

    .line 211
    .line 212
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryEvent:I

    .line 213
    .line 214
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryEvent:I

    .line 215
    .line 216
    iget v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->batteryCurrentEvent:I

    .line 217
    .line 218
    iput v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->batteryCurrentEvent:I

    .line 219
    .line 220
    iget-boolean v1, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->chargerOtgOnline:Z

    .line 221
    .line 222
    iput-boolean v1, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->chargerOtgOnline:Z

    .line 223
    .line 224
    iget p0, p0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 225
    .line 226
    iput p0, v0, Lvendor/samsung/hardware/health/SehHealthInfo;->wirelessPowerSharingTxEvent:I

    .line 227
    .line 228
    return-object v0
.end method
