.class public final Lcom/android/server/am/MARsPackageInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public BatteryUsage:D

.field public appliedPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field public checkJobRunningCount:I

.field public curLevel:I

.field public disableReason:I

.field public disableResetTime:J

.field public disableType:I

.field public fasReason:Ljava/lang/String;

.field public fasType:I

.field public hasAppIcon:Z

.field public isDisabled:Z

.field public isFASEnabled:Z

.field public isInRestrictedBucket:Z

.field public isSCPMTarget:Z

.field public lastUsedTime:J

.field public maxLevel:I

.field public final name:Ljava/lang/String;

.field public nextKillTimeForLongRunningProcess:J

.field public optionFlag:I

.field public packageType:I

.field public resetTime:J

.field public sbike:I

.field public sharedUidName:Ljava/lang/String;

.field public state:I

.field public final uid:I

.field public final userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/FASEntity;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x4

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v2, :cond_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    move v2, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v5, "0"

    .line 41
    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v5, "1"

    .line 50
    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 56
    .line 57
    const/4 v2, 0x2

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string v5, "2"

    .line 60
    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const-string v5, "3"

    .line 70
    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 76
    .line 77
    const/16 v2, 0x8

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_5
    const-string v5, "4"

    .line 81
    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 87
    .line 88
    const/16 v2, 0x10

    .line 89
    .line 90
    :goto_1
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 91
    .line 92
    const-wide/16 v5, 0x0

    .line 93
    .line 94
    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 95
    .line 96
    const-wide/32 v7, -0xdbba0

    .line 97
    .line 98
    .line 99
    iput-wide v7, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 100
    .line 101
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 102
    .line 103
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 104
    .line 105
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 106
    .line 107
    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 118
    .line 119
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 120
    .line 121
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 142
    .line 143
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_8

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-ne v0, v4, :cond_7

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move v4, v1

    .line 167
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 168
    .line 169
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_9

    .line 174
    .line 175
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    iput-wide v4, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 184
    .line 185
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_a

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 200
    .line 201
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_b

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 216
    .line 217
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 218
    .line 219
    if-eqz v0, :cond_c

    .line 220
    .line 221
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 222
    .line 223
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 224
    .line 225
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_c

    .line 230
    .line 231
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 232
    .line 233
    if-eq v0, v3, :cond_c

    .line 234
    .line 235
    const/4 v0, 0x3

    .line 236
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 237
    .line 238
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_d

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 253
    .line 254
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_e

    .line 259
    .line 260
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v2

    .line 268
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 269
    .line 270
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_f

    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .line 282
    .line 283
    goto :goto_5

    .line 284
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 285
    .line 286
    const-string v2, "NumberFormatException !"

    .line 287
    .line 288
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    const-string v0, "MARsPackageInfo"

    .line 299
    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    .line 302
    .line 303
    :cond_f
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 304
    .line 305
    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 307
    .line 308
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

    .line 309
    .line 310
    return-void
.end method


# virtual methods
.method public final initOptionFlag()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string v2, ".cts."

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    :cond_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 18
    .line 19
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 20
    .line 21
    const/16 v3, 0x13

    .line 22
    .line 23
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 28
    .line 29
    :cond_1
    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 30
    .line 31
    or-int/lit8 v2, v2, 0x2

    .line 32
    .line 33
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v3, 0xb

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 45
    .line 46
    or-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 49
    .line 50
    :cond_3
    :goto_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 51
    .line 52
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 53
    .line 54
    const/16 v3, 0x14

    .line 55
    .line 56
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 63
    .line 64
    or-int/lit8 v0, v0, 0x4

    .line 65
    .line 66
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 67
    .line 68
    :cond_4
    return-void
.end method

.method public final updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 2
    .line 3
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 10
    .line 11
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 16
    .line 17
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 22
    .line 23
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 24
    .line 25
    if-ne v0, v1, :cond_0

    .line 26
    .line 27
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 28
    .line 29
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 30
    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 34
    .line 35
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 36
    .line 37
    if-eq v0, v1, :cond_2

    .line 38
    .line 39
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 42
    .line 43
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 44
    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 46
    .line 47
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 48
    .line 49
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 50
    .line 51
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 52
    .line 53
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 56
    .line 57
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 58
    .line 59
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 60
    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 64
    .line 65
    const/4 v1, 0x2

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v0, 0x1

    .line 72
    :goto_0
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 73
    .line 74
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 75
    .line 76
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 77
    .line 78
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 79
    .line 80
    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 81
    .line 82
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 83
    .line 84
    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 85
    .line 86
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 87
    .line 88
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 89
    .line 90
    :cond_2
    return-void
.end method
