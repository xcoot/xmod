.class public final Lcom/android/server/companion/BackupRestoreProcessor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManagerInternal;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/association/AssociationDiskStore;Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;Lcom/android/server/companion/association/AssociationRequestsProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final applyRestoredPayload([BI)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "applyRestoredPayload() userId=["

    .line 8
    .line 9
    const-string v4, "], payload size=["

    .line 10
    .line 11
    invoke-static {v2, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    array-length v4, v0

    .line 16
    const-string v5, "]."

    .line 17
    .line 18
    const-string v6, "CDM_BackupRestoreProcessor"

    .line 19
    .line 20
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/CustomizedBinderCallsStatsInternal$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    array-length v3, v0

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v0, "CDM backup payload was empty."

    .line 27
    .line 28
    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    const-string v0, "Unsupported backup payload version"

    .line 43
    .line 44
    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    new-array v3, v3, [B

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    new-array v4, v4, [B

    .line 62
    .line 63
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 64
    .line 65
    .line 66
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 67
    .line 68
    invoke-direct {v7, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    .line 70
    .line 71
    :try_start_2
    const-string/jumbo v0, "state"

    .line 72
    .line 73
    .line 74
    invoke-static {v2, v7, v0}, Lcom/android/server/companion/association/AssociationDiskStore;->readAssociationsFromInputStream(ILjava/io/InputStream;Ljava/lang/String;)Lcom/android/server/companion/association/Associations;

    .line 75
    .line 76
    .line 77
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 79
    .line 80
    .line 81
    :goto_0
    move-object v3, v0

    .line 82
    goto :goto_3

    .line 83
    :catch_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    move-object v3, v0

    .line 87
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object v7, v0

    .line 93
    :try_start_5
    invoke-virtual {v3, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    throw v3
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 97
    :goto_2
    const-string v3, "CDM_AssociationDiskStore"

    .line 98
    .line 99
    const-string v7, "Error while reading associations file"

    .line 100
    .line 101
    invoke-static {v3, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/android/server/companion/association/Associations;

    .line 105
    .line 106
    invoke-direct {v0}, Lcom/android/server/companion/association/Associations;-><init>()V

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :goto_3
    iget-object v7, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 111
    .line 112
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    :try_start_6
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 116
    .line 117
    invoke-direct {v8, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 118
    .line 119
    .line 120
    :try_start_7
    invoke-static {v8}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string/jumbo v4, "requests"

    .line 125
    .line 126
    .line 127
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromXml(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 134
    :try_start_8
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 135
    .line 136
    .line 137
    goto :goto_8

    .line 138
    :catch_1
    move-exception v0

    .line 139
    goto :goto_7

    .line 140
    :goto_4
    move-object v4, v0

    .line 141
    goto :goto_5

    .line 142
    :catchall_2
    move-exception v0

    .line 143
    goto :goto_4

    .line 144
    :goto_5
    :try_start_9
    invoke-virtual {v8}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 145
    .line 146
    .line 147
    goto :goto_6

    .line 148
    :catchall_3
    move-exception v0

    .line 149
    move-object v8, v0

    .line 150
    :try_start_a
    invoke-virtual {v4, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 151
    .line 152
    .line 153
    :goto_6
    throw v4
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .line 154
    :goto_7
    const-string v4, "CDM_SystemDataTransferRequestStore"

    .line 155
    .line 156
    const-string v8, "Error while reading requests file"

    .line 157
    .line 158
    invoke-static {v4, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .line 160
    .line 161
    new-instance v0, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    :goto_8
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    iget-object v8, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 171
    .line 172
    const-wide/16 v9, 0x0

    .line 173
    .line 174
    invoke-virtual {v8, v2, v4, v9, v10}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(IIJ)Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    iget-object v3, v3, Lcom/android/server/companion/association/Associations;->mAssociations:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    :cond_2
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    .line 186
    .line 187
    move-result v8

    .line 188
    if-eqz v8, :cond_7

    .line 189
    .line 190
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, Landroid/companion/AssociationInfo;

    .line 195
    .line 196
    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->isRevoked()Z

    .line 197
    .line 198
    .line 199
    move-result v9

    .line 200
    if-eqz v9, :cond_3

    .line 201
    .line 202
    goto :goto_9

    .line 203
    :cond_3
    new-instance v9, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    .line 204
    .line 205
    const/4 v10, 0x0

    .line 206
    invoke-direct {v9, v10, v8}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(ILandroid/companion/AssociationInfo;)V

    .line 207
    .line 208
    .line 209
    invoke-static {v0, v9}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v11

    .line 221
    iget-object v12, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 222
    .line 223
    invoke-virtual {v12, v10, v11}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByPackage(ILjava/lang/String;)Ljava/util/List;

    .line 224
    .line 225
    .line 226
    move-result-object v10

    .line 227
    new-instance v11, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;

    .line 228
    .line 229
    const/4 v13, 0x1

    .line 230
    invoke-direct {v11, v13, v8}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda1;-><init>(ILandroid/companion/AssociationInfo;)V

    .line 231
    .line 232
    .line 233
    invoke-static {v10, v11}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    check-cast v10, Landroid/companion/AssociationInfo;

    .line 238
    .line 239
    if-nez v10, :cond_5

    .line 240
    .line 241
    invoke-virtual {v8}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    iget-object v11, v12, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 246
    .line 247
    monitor-enter v11

    .line 248
    :try_start_b
    iget-object v13, v12, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 249
    .line 250
    monitor-enter v13
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 251
    :try_start_c
    iget v14, v12, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 252
    .line 253
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 254
    const/4 v13, 0x1

    .line 255
    add-int/2addr v14, v13

    .line 256
    :try_start_d
    monitor-exit v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 257
    new-instance v11, Landroid/companion/AssociationInfo$Builder;

    .line 258
    .line 259
    invoke-direct {v11, v14, v2, v10, v8}, Landroid/companion/AssociationInfo$Builder;-><init>(IILjava/lang/String;Landroid/companion/AssociationInfo;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v11}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 263
    .line 264
    .line 265
    move-result-object v8

    .line 266
    invoke-interface {v4}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 267
    .line 268
    .line 269
    move-result-object v11

    .line 270
    new-instance v15, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    .line 271
    .line 272
    const/4 v13, 0x0

    .line 273
    invoke-direct {v15, v13, v10}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {v11, v15}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    if-eqz v10, :cond_4

    .line 281
    .line 282
    iget-object v10, v1, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 283
    .line 284
    iget-object v11, v10, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mContext:Landroid/content/Context;

    .line 285
    .line 286
    new-instance v12, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;

    .line 287
    .line 288
    const/4 v13, 0x0

    .line 289
    invoke-direct {v12, v10, v8, v13, v13}, Lcom/android/server/companion/association/AssociationRequestsProcessor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/companion/association/AssociationRequestsProcessor;Landroid/companion/AssociationInfo;Landroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 290
    .line 291
    .line 292
    invoke-static {v11, v8, v12}, Lcom/android/server/companion/utils/RolesUtils;->addRoleHolderForAssociation(Landroid/content/Context;Landroid/companion/AssociationInfo;Ljava/util/function/Consumer;)V

    .line 293
    .line 294
    .line 295
    goto :goto_a

    .line 296
    :cond_4
    new-instance v10, Landroid/companion/AssociationInfo$Builder;

    .line 297
    .line 298
    invoke-direct {v10, v8}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 299
    .line 300
    .line 301
    const/4 v8, 0x1

    .line 302
    invoke-virtual {v10, v8}, Landroid/companion/AssociationInfo$Builder;->setPending(Z)Landroid/companion/AssociationInfo$Builder;

    .line 303
    .line 304
    .line 305
    move-result-object v8

    .line 306
    invoke-virtual {v8}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    invoke-virtual {v12, v8}, Lcom/android/server/companion/association/AssociationStore;->addAssociation(Landroid/companion/AssociationInfo;)V

    .line 311
    .line 312
    .line 313
    :goto_a
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 314
    .line 315
    .line 316
    move-result-object v8

    .line 317
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    .line 319
    .line 320
    move-result v9

    .line 321
    if-eqz v9, :cond_2

    .line 322
    .line 323
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v9

    .line 327
    check-cast v9, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 328
    .line 329
    invoke-virtual {v9, v14}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 330
    .line 331
    .line 332
    move-result-object v9

    .line 333
    invoke-virtual {v9, v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v7, v2, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 337
    .line 338
    .line 339
    goto :goto_b

    .line 340
    :catchall_4
    move-exception v0

    .line 341
    goto :goto_c

    .line 342
    :catchall_5
    move-exception v0

    .line 343
    :try_start_e
    monitor-exit v13
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 344
    :try_start_f
    throw v0

    .line 345
    :goto_c
    monitor-exit v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 346
    throw v0

    .line 347
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 348
    .line 349
    const-string v11, "Conflict detected with association id="

    .line 350
    .line 351
    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    .line 355
    .line 356
    .line 357
    move-result v11

    .line 358
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    const-string v11, " while restoring CDM backup. Keeping local association."

    .line 362
    .line 363
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v8

    .line 370
    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    .line 374
    .line 375
    .line 376
    move-result v8

    .line 377
    invoke-virtual {v7, v2, v8}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsByAssociationId(II)Ljava/util/List;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 386
    .line 387
    .line 388
    move-result v11

    .line 389
    if-eqz v11, :cond_2

    .line 390
    .line 391
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v11

    .line 395
    check-cast v11, Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 396
    .line 397
    new-instance v12, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;

    .line 398
    .line 399
    const/4 v13, 0x1

    .line 400
    invoke-direct {v12, v13, v11}, Lcom/android/server/companion/BackupRestoreProcessor$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 401
    .line 402
    .line 403
    invoke-static {v8, v12}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    if-eqz v12, :cond_6

    .line 408
    .line 409
    goto :goto_d

    .line 410
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    const-string v13, "Restoring "

    .line 413
    .line 414
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 418
    .line 419
    .line 420
    move-result-object v13

    .line 421
    invoke-virtual {v13}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v13

    .line 425
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    const-string v13, " to an existing association id=["

    .line 429
    .line 430
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    .line 434
    .line 435
    .line 436
    move-result v13

    .line 437
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v12

    .line 447
    invoke-static {v6, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10}, Landroid/companion/AssociationInfo;->getId()I

    .line 451
    .line 452
    .line 453
    move-result v12

    .line 454
    invoke-virtual {v11, v12}, Landroid/companion/datatransfer/SystemDataTransferRequest;->copyWithNewId(I)Landroid/companion/datatransfer/SystemDataTransferRequest;

    .line 455
    .line 456
    .line 457
    move-result-object v11

    .line 458
    invoke-virtual {v11, v2}, Landroid/companion/datatransfer/SystemDataTransferRequest;->setUserId(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v7, v2, v11}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 462
    .line 463
    .line 464
    goto :goto_d

    .line 465
    :cond_7
    return-void

    .line 466
    :catch_2
    move-exception v0

    .line 467
    const-string v1, "CDM backup payload was mal-formatted."

    .line 468
    .line 469
    invoke-static {v6, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .line 471
    .line 472
    return-void
.end method

.method public final getBackupPayload(I)[B
    .locals 4

    .line 1
    const-string v0, "CDM_BackupRestoreProcessor"

    .line 2
    .line 3
    const-string/jumbo v1, "getBackupPayload() userId=["

    .line 4
    .line 5
    .line 6
    const-string v2, "]."

    .line 7
    .line 8
    invoke-static {p1, v1, v2, v0}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mAssociationDiskStore:Lcom/android/server/companion/association/AssociationDiskStore;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "CDM_AssociationDiskStore"

    .line 17
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v3, "Fetching stored state data for user "

    .line 21
    .line 22
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " from disk"

    .line 29
    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Lcom/android/server/companion/association/AssociationDiskStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    monitor-enter v0

    .line 45
    :try_start_0
    invoke-static {v0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    array-length v0, v1

    .line 51
    iget-object p0, p0, Lcom/android/server/companion/BackupRestoreProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 52
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    monitor-enter p0

    .line 58
    :try_start_1
    invoke-static {p0}, Lcom/android/server/companion/utils/DataStoreUtils;->fileToByteArray(Landroid/util/AtomicFile;)[B

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    array-length p0, p1

    .line 64
    add-int/lit8 v2, v0, 0xc

    .line 65
    .line 66
    add-int/2addr v2, p0

    .line 67
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    throw p1

    .line 100
    :catchall_1
    move-exception p0

    .line 101
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    throw p0
.end method
