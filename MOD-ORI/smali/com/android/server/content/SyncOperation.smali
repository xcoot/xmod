.class public final Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final REASON_NAMES:[Ljava/lang/String;


# instance fields
.field public final allowParallelSyncs:Z

.field public expectedRuntime:J

.field public final flexMillis:J

.field public final isPeriodic:Z

.field public jobId:I

.field public final key:Ljava/lang/String;

.field public volatile mImmutableExtras:Landroid/os/Bundle;

.field public final owningPackage:Ljava/lang/String;

.field public final owningUid:I

.field public final periodMillis:J

.field public final reason:I

.field public retries:I

.field public scheduleEjAsRegularJob:Z

.field public final sourcePeriodicId:I

.field public syncExemptionFlag:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-string v6, "MasterSyncAuto"

    .line 2
    .line 3
    const-string v7, "UserStart"

    .line 4
    .line 5
    const-string v0, "DataSettingsChanged"

    .line 6
    .line 7
    const-string v1, "AccountsUpdated"

    .line 8
    .line 9
    const-string v2, "ServiceChanged"

    .line 10
    .line 11
    const-string v3, "Periodic"

    .line 12
    .line 13
    const-string v4, "IsSyncable"

    .line 14
    .line 15
    const-string v5, "AutoSync"

    .line 16
    .line 17
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IILjava/lang/String;IILjava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 15

    .line 1
    new-instance v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    move/from16 v2, p2

    move-object/from16 v3, p7

    invoke-direct {v1, v0, v3, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p8

    move/from16 v7, p9

    move/from16 v14, p10

    .line 2
    invoke-direct/range {v0 .. v14}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 5
    iput p2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 6
    iput-object p3, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 7
    iput p4, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 8
    iput p5, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 9
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object p2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 10
    iput-boolean p7, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 11
    iput-boolean p8, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 12
    iput p9, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 13
    iput-wide p10, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 14
    iput-wide p12, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    const/4 p2, -0x1

    .line 15
    iput p2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 16
    iget-object p2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 17
    const-string/jumbo p3, "provider: "

    .line 18
    invoke-static {p3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 19
    iget-object p4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, " account {name="

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p5, p5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", user="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p5, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", type="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p1, " isPeriodic: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    const-string p1, " period: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p10, p11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    const-string p1, " flex: "

    .line 24
    const-string p4, " extras: "

    .line 25
    invoke-static {p3, p1, p12, p13, p4}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    .line 26
    invoke-static {p2, p3}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 27
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 29
    iput p14, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    return-void
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string/jumbo p0, "null"

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "["

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, "="

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " "

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const-string p0, "]"

    .line 57
    .line 58
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public static maybeCreateFromJobExtras(Landroid/os/PersistableBundle;)Lcom/android/server/content/SyncOperation;
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const-string v2, "SyncManagerJob"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_1
    const-string v1, "accountName"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const-string v4, "accountType"

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const-string/jumbo v6, "provider"

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v6}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    const-string/jumbo v7, "userId"

    .line 37
    .line 38
    .line 39
    const v8, 0x7fffffff

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v7, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    const-string/jumbo v9, "owningUid"

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    const-string/jumbo v9, "owningPackage"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    const-string/jumbo v9, "reason"

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v9, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    const-string/jumbo v9, "source"

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v9, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v15

    .line 74
    const-string v8, "allowParallelSyncs"

    .line 75
    .line 76
    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 77
    .line 78
    .line 79
    move-result v17

    .line 80
    const-string/jumbo v8, "isPeriodic"

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 84
    .line 85
    .line 86
    move-result v18

    .line 87
    const-string/jumbo v8, "sourcePeriodicId"

    .line 88
    .line 89
    .line 90
    const/4 v9, -0x1

    .line 91
    invoke-virtual {v0, v8, v9}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 92
    .line 93
    .line 94
    move-result v19

    .line 95
    const-string/jumbo v8, "periodMillis"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 99
    .line 100
    .line 101
    move-result-wide v20

    .line 102
    const-string/jumbo v8, "flexMillis"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 106
    .line 107
    .line 108
    move-result-wide v22

    .line 109
    const-string/jumbo v8, "syncExemptionFlag"

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v8, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    .line 113
    .line 114
    .line 115
    move-result v24

    .line 116
    new-instance v3, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string/jumbo v8, "syncExtras"

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v8}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    if-eqz v8, :cond_2

    .line 129
    .line 130
    invoke-virtual {v3, v8}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/os/PersistableBundle;->keySet()Ljava/util/Set;

    .line 134
    .line 135
    .line 136
    move-result-object v8

    .line 137
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v9

    .line 145
    if-eqz v9, :cond_4

    .line 146
    .line 147
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v9

    .line 151
    check-cast v9, Ljava/lang/String;

    .line 152
    .line 153
    if-eqz v9, :cond_3

    .line 154
    .line 155
    const-string v10, "ACCOUNT:"

    .line 156
    .line 157
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 158
    .line 159
    .line 160
    move-result v10

    .line 161
    if-eqz v10, :cond_3

    .line 162
    .line 163
    const/16 v10, 0x8

    .line 164
    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    new-instance v11, Landroid/accounts/Account;

    .line 174
    .line 175
    move-object/from16 v16, v8

    .line 176
    .line 177
    invoke-virtual {v9, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    invoke-virtual {v9, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    invoke-direct {v11, v8, v9}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_3
    move-object/from16 v16, v8

    .line 193
    .line 194
    :goto_1
    move-object/from16 v8, v16

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_4
    new-instance v1, Landroid/accounts/Account;

    .line 198
    .line 199
    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    new-instance v11, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 203
    .line 204
    invoke-direct {v11, v1, v6, v7}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 205
    .line 206
    .line 207
    new-instance v1, Lcom/android/server/content/SyncOperation;

    .line 208
    .line 209
    move-object v10, v1

    .line 210
    move-object/from16 v16, v3

    .line 211
    .line 212
    invoke-direct/range {v10 .. v24}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo v2, "jobId"

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    iput v2, v1, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 223
    .line 224
    const-string/jumbo v2, "expectedRuntime"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    .line 228
    .line 229
    .line 230
    move-result-wide v2

    .line 231
    iput-wide v2, v1, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 232
    .line 233
    const-string/jumbo v2, "retries"

    .line 234
    .line 235
    .line 236
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iput v2, v1, Lcom/android/server/content/SyncOperation;->retries:I

    .line 241
    .line 242
    const-string/jumbo v2, "ejDowngradedToRegular"

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iput-boolean v0, v1, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 250
    .line 251
    return-object v1
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ltz p1, :cond_3

    .line 3
    .line 4
    if-eqz p0, :cond_2

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    array-length v2, v1

    .line 13
    if-ne v2, v0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    aget-object p0, v1, p0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_1

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0

    .line 36
    :cond_3
    neg-int p0, p1

    .line 37
    sub-int/2addr p0, v0

    .line 38
    const/16 v0, 0x8

    .line 39
    .line 40
    if-lt p0, v0, :cond_4

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_4
    sget-object p1, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    .line 48
    .line 49
    aget-object p0, p1, p0

    .line 50
    .line 51
    return-object p0
.end method


# virtual methods
.method public final createOneTimeSyncOperation()Lcom/android/server/content/SyncOperation;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v16, Lcom/android/server/content/SyncOperation;

    .line 10
    .line 11
    iget-object v2, v0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 12
    .line 13
    iget v3, v0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 14
    .line 15
    iget-object v4, v0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 16
    .line 17
    iget v5, v0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 18
    .line 19
    iget v6, v0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 20
    .line 21
    iget-object v7, v0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 22
    .line 23
    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 24
    .line 25
    iget v10, v0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 26
    .line 27
    iget-wide v11, v0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 28
    .line 29
    iget-wide v13, v0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 30
    .line 31
    const/4 v15, 0x0

    .line 32
    const/4 v9, 0x0

    .line 33
    move-object/from16 v1, v16

    .line 34
    .line 35
    invoke-direct/range {v1 .. v15}, Lcom/android/server/content/SyncOperation;-><init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILjava/lang/String;IILandroid/os/Bundle;ZZIJJI)V

    .line 36
    .line 37
    .line 38
    return-object v16
.end method

.method public final dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string v1, "JobId="

    .line 4
    .line 5
    invoke-static {v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, " "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    if-eqz p4, :cond_0

    .line 20
    .line 21
    const-string p4, "***"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 25
    .line 26
    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 27
    .line 28
    iget-object p4, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p4, "/"

    .line 34
    .line 35
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 39
    .line 40
    iget-object p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 41
    .line 42
    iget-object p4, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p4, " u"

    .line 48
    .line 49
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object p4, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 53
    .line 54
    iget p4, p4, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 55
    .line 56
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string p4, " ["

    .line 60
    .line 61
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v3, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v3, "] "

    .line 72
    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    sget-object v3, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    .line 77
    .line 78
    iget v4, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 79
    .line 80
    aget-object v3, v3, v4

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 86
    .line 87
    const-wide/16 v5, 0x0

    .line 88
    .line 89
    cmp-long v3, v3, v5

    .line 90
    .line 91
    if-eqz v3, :cond_1

    .line 92
    .line 93
    const-string v3, " ExpectedIn="

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v3, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    sub-long/2addr v3, v5

    .line 105
    invoke-static {v1, v3, v4}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 106
    .line 107
    .line 108
    :cond_1
    const-string/jumbo v3, "expedited"

    .line 109
    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_2

    .line 117
    .line 118
    const-string v3, " EXPEDITED"

    .line 119
    .line 120
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    :cond_2
    const-string/jumbo v3, "schedule_as_expedited_job"

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    const-string v3, " EXPEDITED-JOB"

    .line 133
    .line 134
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-boolean v3, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 138
    .line 139
    if-eqz v3, :cond_3

    .line 140
    .line 141
    const-string v3, "(scheduled-as-regular)"

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    :cond_3
    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 147
    .line 148
    if-eqz v3, :cond_6

    .line 149
    .line 150
    const/4 v5, 0x1

    .line 151
    if-eq v3, v5, :cond_5

    .line 152
    .line 153
    const/4 v5, 0x2

    .line 154
    if-eq v3, v5, :cond_4

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string v5, " ExemptionFlag="

    .line 159
    .line 160
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget v5, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 164
    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    goto :goto_1

    .line 176
    :cond_4
    const-string v3, " STANDBY-EXEMPTED(TOP)"

    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    const-string v3, " STANDBY-EXEMPTED"

    .line 183
    .line 184
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    :cond_6
    :goto_1
    const-string v3, " Reason="

    .line 188
    .line 189
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    iget v3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 193
    .line 194
    invoke-static {p1, v3}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-boolean p1, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 202
    .line 203
    if-eqz p1, :cond_7

    .line 204
    .line 205
    const-string p1, " (period="

    .line 206
    .line 207
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    iget-wide v5, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 211
    .line 212
    invoke-static {v1, v5, v6}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 213
    .line 214
    .line 215
    const-string p1, " flex="

    .line 216
    .line 217
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    iget-wide v5, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 221
    .line 222
    invoke-static {v1, v5, v6}, Lcom/android/server/content/SyncManager;->formatDurationHMS(Ljava/lang/StringBuilder;J)V

    .line 223
    .line 224
    .line 225
    const-string p1, ")"

    .line 226
    .line 227
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    :cond_7
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    .line 231
    .line 232
    if-lez p1, :cond_8

    .line 233
    .line 234
    const-string p1, " Retries="

    .line 235
    .line 236
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    iget p1, p0, Lcom/android/server/content/SyncOperation;->retries:I

    .line 240
    .line 241
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    :cond_8
    if-nez p2, :cond_d

    .line 245
    .line 246
    const-string p1, " Owner={"

    .line 247
    .line 248
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 252
    .line 253
    invoke-static {v1, p1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    if-eqz p3, :cond_c

    .line 265
    .line 266
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    iget p1, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 270
    .line 271
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    iget-object p2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 276
    .line 277
    invoke-static {p1, p2}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 278
    .line 279
    .line 280
    move-result-object p4

    .line 281
    iget-object v3, p3, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    .line 282
    .line 283
    invoke-virtual {v3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    check-cast v3, Ljava/lang/Integer;

    .line 288
    .line 289
    if-eqz v3, :cond_9

    .line 290
    .line 291
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    goto :goto_2

    .line 296
    :cond_9
    const-class v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 297
    .line 298
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Landroid/app/usage/UsageStatsManagerInternal;

    .line 303
    .line 304
    if-nez v3, :cond_a

    .line 305
    .line 306
    const/4 p1, -0x1

    .line 307
    goto :goto_2

    .line 308
    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 309
    .line 310
    .line 311
    move-result-wide v5

    .line 312
    invoke-virtual {v3, p1, p2, v5, v6}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(ILjava/lang/String;J)I

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    iget-object p2, p3, Lcom/android/server/content/SyncAdapterStateFetcher;->mBucketCache:Ljava/util/HashMap;

    .line 317
    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object p3

    .line 322
    invoke-virtual {p2, p4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    const-string p1, "]"

    .line 329
    .line 330
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget p0, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 334
    .line 335
    const-class p1, Landroid/app/ActivityManagerInternal;

    .line 336
    .line 337
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    check-cast p1, Landroid/app/ActivityManagerInternal;

    .line 342
    .line 343
    if-eqz p1, :cond_b

    .line 344
    .line 345
    invoke-virtual {p1, p0}, Landroid/app/ActivityManagerInternal;->isUidActive(I)Z

    .line 346
    .line 347
    .line 348
    move-result v4

    .line 349
    :cond_b
    if-eqz v4, :cond_c

    .line 350
    .line 351
    const-string p0, " [ACTIVE]"

    .line 352
    .line 353
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    :cond_c
    const-string/jumbo p0, "}"

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_d

    .line 371
    .line 372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-static {v0, v1}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 376
    .line 377
    .line 378
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object p0

    .line 382
    return-object p0
.end method

.method public final getJobBias()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 2
    .line 3
    const-string/jumbo v1, "initialize"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/16 p0, 0x14

    .line 14
    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 17
    .line 18
    const-string/jumbo v0, "expedited"

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    const/16 p0, 0xa

    .line 28
    .line 29
    return p0

    .line 30
    :cond_1
    return v2
.end method

.method public final toJobInfoExtras()Landroid/os/PersistableBundle;
    .locals 10

    .line 1
    new-instance v0, Landroid/os/PersistableBundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/PersistableBundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->mImmutableExtras:Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    const-string v5, "accountType"

    .line 26
    .line 27
    const-string v6, "accountName"

    .line 28
    .line 29
    if-eqz v4, :cond_8

    .line 30
    .line 31
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    instance-of v8, v7, Landroid/accounts/Account;

    .line 42
    .line 43
    if-eqz v8, :cond_0

    .line 44
    .line 45
    check-cast v7, Landroid/accounts/Account;

    .line 46
    .line 47
    new-instance v8, Landroid/os/PersistableBundle;

    .line 48
    .line 49
    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    .line 50
    .line 51
    .line 52
    iget-object v9, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v8, v6, v9}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v6, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v8, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    const-string v6, "ACCOUNT:"

    .line 65
    .line 66
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v0, v4, v8}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_0
    instance-of v5, v7, Ljava/lang/Long;

    .line 81
    .line 82
    if-eqz v5, :cond_1

    .line 83
    .line 84
    check-cast v7, Ljava/lang/Long;

    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v5

    .line 90
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    instance-of v5, v7, Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    check-cast v7, Ljava/lang/Integer;

    .line 99
    .line 100
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    instance-of v5, v7, Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz v5, :cond_3

    .line 111
    .line 112
    check-cast v7, Ljava/lang/Boolean;

    .line 113
    .line 114
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    instance-of v5, v7, Ljava/lang/Float;

    .line 123
    .line 124
    if-eqz v5, :cond_4

    .line 125
    .line 126
    check-cast v7, Ljava/lang/Float;

    .line 127
    .line 128
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    float-to-double v5, v5

    .line 133
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    instance-of v5, v7, Ljava/lang/Double;

    .line 138
    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    check-cast v7, Ljava/lang/Double;

    .line 142
    .line 143
    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    .line 144
    .line 145
    .line 146
    move-result-wide v5

    .line 147
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/PersistableBundle;->putDouble(Ljava/lang/String;D)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :cond_5
    instance-of v5, v7, Ljava/lang/String;

    .line 153
    .line 154
    if-eqz v5, :cond_6

    .line 155
    .line 156
    check-cast v7, Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v1, v4, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_6
    if-nez v7, :cond_7

    .line 164
    .line 165
    const/4 v5, 0x0

    .line 166
    invoke-virtual {v1, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_7
    const-string v4, "SyncManager"

    .line 172
    .line 173
    const-string v5, "Unknown extra type."

    .line 174
    .line 175
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_8
    const-string/jumbo v2, "syncExtras"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 184
    .line 185
    .line 186
    const-string v1, "SyncManagerJob"

    .line 187
    .line 188
    const/4 v2, 0x1

    .line 189
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 190
    .line 191
    .line 192
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 193
    .line 194
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 195
    .line 196
    const-string/jumbo v2, "provider"

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 203
    .line 204
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 205
    .line 206
    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v0, v6, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 212
    .line 213
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 214
    .line 215
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 216
    .line 217
    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 221
    .line 222
    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 223
    .line 224
    const-string/jumbo v2, "userId"

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 228
    .line 229
    .line 230
    const-string/jumbo v1, "owningUid"

    .line 231
    .line 232
    .line 233
    iget v2, p0, Lcom/android/server/content/SyncOperation;->owningUid:I

    .line 234
    .line 235
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    const-string/jumbo v1, "owningPackage"

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->owningPackage:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string/jumbo v1, "reason"

    .line 247
    .line 248
    .line 249
    iget v2, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 250
    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 252
    .line 253
    .line 254
    const-string/jumbo v1, "source"

    .line 255
    .line 256
    .line 257
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 258
    .line 259
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    const-string v1, "allowParallelSyncs"

    .line 263
    .line 264
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 265
    .line 266
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    .line 268
    .line 269
    const-string/jumbo v1, "jobId"

    .line 270
    .line 271
    .line 272
    iget v2, p0, Lcom/android/server/content/SyncOperation;->jobId:I

    .line 273
    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    const-string/jumbo v1, "isPeriodic"

    .line 278
    .line 279
    .line 280
    iget-boolean v2, p0, Lcom/android/server/content/SyncOperation;->isPeriodic:Z

    .line 281
    .line 282
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v1, "sourcePeriodicId"

    .line 286
    .line 287
    .line 288
    iget v2, p0, Lcom/android/server/content/SyncOperation;->sourcePeriodicId:I

    .line 289
    .line 290
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 291
    .line 292
    .line 293
    const-string/jumbo v1, "periodMillis"

    .line 294
    .line 295
    .line 296
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->periodMillis:J

    .line 297
    .line 298
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 299
    .line 300
    .line 301
    const-string/jumbo v1, "flexMillis"

    .line 302
    .line 303
    .line 304
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->flexMillis:J

    .line 305
    .line 306
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 307
    .line 308
    .line 309
    const-string/jumbo v1, "expectedRuntime"

    .line 310
    .line 311
    .line 312
    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->expectedRuntime:J

    .line 313
    .line 314
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 315
    .line 316
    .line 317
    const-string/jumbo v1, "retries"

    .line 318
    .line 319
    .line 320
    iget v2, p0, Lcom/android/server/content/SyncOperation;->retries:I

    .line 321
    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 323
    .line 324
    .line 325
    const-string/jumbo v1, "syncExemptionFlag"

    .line 326
    .line 327
    .line 328
    iget v2, p0, Lcom/android/server/content/SyncOperation;->syncExemptionFlag:I

    .line 329
    .line 330
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 331
    .line 332
    .line 333
    const-string/jumbo v1, "ejDowngradedToRegular"

    .line 334
    .line 335
    .line 336
    iget-boolean p0, p0, Lcom/android/server/content/SyncOperation;->scheduleEjAsRegularJob:Z

    .line 337
    .line 338
    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    .line 340
    .line 341
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;ZLcom/android/server/content/SyncAdapterStateFetcher;Z)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public final wakeLockName()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 12
    .line 13
    iget-object v2, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "/"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 24
    .line 25
    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->wakeLockName:Ljava/lang/String;

    .line 35
    .line 36
    return-object v0
.end method
