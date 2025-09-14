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

    .line 4
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 13
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 18
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    iput-object v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasReason:Ljava/lang/String;

    .line 24
    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    .line 27
    move-result v2

    .line 28
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 30
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x4

    .line 35
    const/4 v4, 0x1

    .line 36
    if-nez v2, :cond_1

    .line 38
    :cond_0
    :goto_0
    move v2, v4

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const-string v5, "0"

    .line 42
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v5

    .line 46
    if-eqz v5, :cond_2

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string v5, "1"

    .line 51
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_3

    .line 57
    const/4 v2, 0x2

    .line 58
    goto :goto_1

    .line 59
    :cond_3
    const-string v5, "2"

    .line 61
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_4

    .line 67
    move v2, v3

    .line 68
    goto :goto_1

    .line 69
    :cond_4
    const-string v5, "3"

    .line 71
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_5

    .line 77
    const/16 v2, 0x8

    .line 79
    goto :goto_1

    .line 80
    :cond_5
    const-string v5, "4"

    .line 82
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_0

    .line 88
    const/16 v2, 0x10

    .line 90
    :goto_1
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 92
    const-wide/16 v5, 0x0

    .line 94
    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 96
    const-wide/32 v7, -0xdbba0

    .line 99
    iput-wide v7, p0, Lcom/android/server/am/MARsPackageInfo;->lastUsedTime:J

    .line 101
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 103
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 105
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 107
    iput-wide v5, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 109
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    .line 116
    move-result v0

    .line 117
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 119
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 121
    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    if-eqz v0, :cond_6

    .line 127
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 137
    goto :goto_2

    .line 138
    :catch_0
    move-exception p1

    .line 139
    goto/16 :goto_4

    .line 141
    :cond_6
    :goto_2
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->uid:I

    .line 143
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 146
    move-result v0

    .line 147
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->userId:I

    .line 149
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_8

    .line 155
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    .line 158
    move-result-object v0

    .line 159
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 162
    move-result v0

    .line 163
    if-ne v0, v4, :cond_7

    .line 165
    goto :goto_3

    .line 166
    :cond_7
    move v4, v1

    .line 167
    :goto_3
    iput-boolean v4, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 169
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    if-eqz v0, :cond_9

    .line 175
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrResetTime()Ljava/lang/String;

    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 182
    move-result-wide v4

    .line 183
    iput-wide v4, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 185
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 188
    move-result-object v0

    .line 189
    if-eqz v0, :cond_a

    .line 191
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    .line 194
    move-result-object v0

    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 198
    move-result v0

    .line 199
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 201
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    if-eqz v0, :cond_b

    .line 207
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    move-result v0

    .line 215
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 217
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 219
    if-eqz v0, :cond_c

    .line 221
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 223
    sget-object v0, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    .line 228
    move-result v0

    .line 229
    if-eqz v0, :cond_c

    .line 231
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 233
    if-eq v0, v3, :cond_c

    .line 235
    const/4 v0, 0x3

    .line 236
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 238
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    if-eqz v0, :cond_d

    .line 244
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    .line 247
    move-result-object v0

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 251
    move-result v0

    .line 252
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 254
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 257
    move-result-object v0

    .line 258
    if-eqz v0, :cond_e

    .line 260
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableResetTime()Ljava/lang/String;

    .line 263
    move-result-object v0

    .line 264
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 267
    move-result-wide v2

    .line 268
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 270
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_f

    .line 276
    invoke-virtual {p1}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    .line 279
    move-result-object p1

    .line 280
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_5

    .line 284
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    const-string v2, "NumberFormatException !"

    .line 288
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    move-result-object p1

    .line 298
    const-string v0, "MARsPackageInfo"

    .line 300
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_f
    :goto_5
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isInRestrictedBucket:Z

    .line 305
    const/4 p1, 0x0

    .line 306
    iput-object p1, p0, Lcom/android/server/am/MARsPackageInfo;->sharedUidName:Ljava/lang/String;

    .line 308
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->checkJobRunningCount:I

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

    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/android/server/am/MARsPackageInfo;->name:Ljava/lang/String;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string v2, ".cts."

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 17
    :cond_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 19
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 21
    const/16 v3, 0x13

    .line 23
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_2

    .line 29
    :cond_1
    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 31
    or-int/lit8 v2, v2, 0x2

    .line 33
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v3, 0xb

    .line 38
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_3

    .line 44
    iget v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 46
    or-int/lit8 v2, v2, 0x1

    .line 48
    iput v2, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 50
    :cond_3
    :goto_0
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mMARsSettingsInfoDefault:[[Ljava/lang/String;

    .line 52
    sget-object v2, Lcom/android/server/am/mars/database/MARsVersionManager$MARsVersionManagerHolder;->INSTANCE:Lcom/android/server/am/mars/database/MARsVersionManager;

    .line 54
    const/16 v3, 0x14

    .line 56
    invoke-virtual {v2, v3, v1, v0, v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_4

    .line 62
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 64
    or-int/lit8 v0, v0, 0x4

    .line 66
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    .line 68
    :cond_4
    return-void
.end method

.method public final updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 3
    iget-wide v2, p1, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 5
    cmp-long v0, v0, v2

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 11
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 17
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 19
    if-ne v0, v1, :cond_0

    .line 21
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 23
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 25
    if-ne v0, v1, :cond_0

    .line 27
    iget v0, p0, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 29
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 31
    if-ne v0, v1, :cond_0

    .line 33
    iget-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 35
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 37
    if-eq v0, v1, :cond_2

    .line 39
    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/server/am/MARsPackageInfo;->isFASEnabled:Z

    .line 43
    iget-boolean v1, p1, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/server/am/MARsPackageInfo;->isDisabled:Z

    .line 47
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 49
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->fasType:I

    .line 51
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 53
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->state:I

    .line 55
    iput-wide v2, p0, Lcom/android/server/am/MARsPackageInfo;->resetTime:J

    .line 57
    iget v1, p1, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 59
    iput v1, p0, Lcom/android/server/am/MARsPackageInfo;->packageType:I

    .line 61
    if-eqz v0, :cond_1

    .line 63
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->maxLevel:I

    .line 65
    const/4 v1, 0x2

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

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

    .line 74
    iget v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 76
    iput v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableType:I

    .line 78
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 80
    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->disableResetTime:J

    .line 82
    iget-wide v0, p1, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 84
    iput-wide v0, p0, Lcom/android/server/am/MARsPackageInfo;->BatteryUsage:D

    .line 86
    iget p1, p1, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 88
    iput p1, p0, Lcom/android/server/am/MARsPackageInfo;->disableReason:I

    .line 90
    :cond_2
    return-void
.end method
