.class public final Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# instance fields
.field public final mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

.field public final mConnection:Lcom/android/server/pm/DomainVerificationConnection;

.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mRequests:Landroid/util/ArrayMap;

.field public mVerificationToken:I

.field public final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Lcom/android/server/pm/verify/domain/DomainVerificationCollector;Lcom/android/server/pm/DomainVerificationConnection;Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mContext:Landroid/content/Context;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 26
    .line 27
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getComponentName()Landroid/content/ComponentName;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    return-object p0
.end method

.method public final isCallerVerifier(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iget-object p0, p0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    invoke-interface {p0, v0, v2, v3, v1}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-ne p1, p0, :cond_0

    .line 29
    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    return p0
.end method

.method public final runMessage(ILjava/lang/Object;)Z
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x2

    .line 8
    if-eq v0, v4, :cond_9

    .line 9
    .line 10
    const/4 v5, 0x3

    .line 11
    if-eq v0, v5, :cond_0

    .line 12
    .line 13
    return v3

    .line 14
    :cond_0
    move-object/from16 v0, p2

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;

    .line 17
    .line 18
    iget-object v3, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 19
    .line 20
    iget v5, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->verificationId:I

    .line 21
    .line 22
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v5

    .line 26
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/util/Pair;

    .line 31
    .line 32
    if-nez v3, :cond_1

    .line 33
    .line 34
    return v2

    .line 35
    :cond_1
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v5, Ljava/util/UUID;

    .line 38
    .line 39
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    :try_start_0
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 44
    .line 45
    check-cast v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 46
    .line 47
    invoke-virtual {v6, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->getDomainVerificationInfo(Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    if-nez v6, :cond_2

    .line 52
    .line 53
    return v2

    .line 54
    :cond_2
    invoke-virtual {v6}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->getIdentifier()Ljava/util/UUID;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-static {v5, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    if-nez v7, :cond_3

    .line 63
    .line 64
    return v2

    .line 65
    :cond_3
    iget-object v7, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 66
    .line 67
    iget-object v7, v7, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 68
    .line 69
    invoke-virtual {v7}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v7, v3}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    if-nez v7, :cond_4

    .line 78
    .line 79
    return v2

    .line 80
    :cond_4
    new-instance v7, Landroid/util/ArraySet;

    .line 81
    .line 82
    iget-object v8, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->failedDomains:Ljava/util/List;

    .line 83
    .line 84
    invoke-direct {v7, v8}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v6}, Landroid/content/pm/verify/domain/DomainVerificationInfo;->getHostToStateMap()Ljava/util/Map;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    new-instance v8, Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-direct {v8, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 101
    .line 102
    .line 103
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    sub-int/2addr v9, v2

    .line 108
    :goto_0
    if-ltz v9, :cond_6

    .line 109
    .line 110
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Ljava/lang/String;

    .line 115
    .line 116
    const-string v11, "*."

    .line 117
    .line 118
    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    if-eqz v11, :cond_5

    .line 123
    .line 124
    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v11

    .line 128
    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v12

    .line 132
    if-eqz v12, :cond_5

    .line 133
    .line 134
    invoke-virtual {v7, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    invoke-virtual {v8, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v10

    .line 144
    if-nez v10, :cond_5

    .line 145
    .line 146
    invoke-virtual {v7, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :cond_5
    add-int/lit8 v9, v9, -0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_6
    iget v4, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1$Response;->callingUid:I

    .line 153
    .line 154
    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_7

    .line 159
    .line 160
    :try_start_1
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 161
    .line 162
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 163
    .line 164
    invoke-virtual {v0, v4, v5, v8, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    .line 170
    const-string v0, "DomainVerificationProxyV1"

    .line 171
    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    .line 173
    .line 174
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .line 176
    .line 177
    const-string v8, "Failure reporting successful domains for "

    .line 178
    .line 179
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 190
    .line 191
    .line 192
    goto :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v6, "DomainVerificationProxyV1"

    .line 195
    .line 196
    new-instance v8, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    const-string v9, "Failure reporting successful domains for "

    .line 199
    .line 200
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-static {v6, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .line 212
    .line 213
    :cond_7
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_8

    .line 218
    .line 219
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 220
    .line 221
    check-cast v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 222
    .line 223
    const/4 v1, 0x6

    .line 224
    invoke-virtual {v0, v4, v5, v7, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationService;->setDomainVerificationStatusInternal(ILjava/util/UUID;Ljava/util/Set;I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v0, :cond_8

    .line 229
    .line 230
    const-string v0, "DomainVerificationProxyV1"

    .line 231
    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v4, "Failure reporting failed domains for "

    .line 238
    .line 239
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_2

    .line 253
    :catch_1
    move-exception v0

    .line 254
    const-string v1, "DomainVerificationProxyV1"

    .line 255
    .line 256
    new-instance v4, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    const-string v5, "Failure reporting failed domains for "

    .line 259
    .line 260
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .line 272
    .line 273
    :catch_2
    :cond_8
    :goto_2
    return v2

    .line 274
    :cond_9
    move-object/from16 v0, p2

    .line 275
    .line 276
    check-cast v0, Ljava/util/Set;

    .line 277
    .line 278
    new-instance v5, Landroid/util/ArrayMap;

    .line 279
    .line 280
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 281
    .line 282
    .line 283
    move-result v6

    .line 284
    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    .line 285
    .line 286
    .line 287
    iget-object v6, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    .line 288
    .line 289
    monitor-enter v6

    .line 290
    :try_start_3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    .line 296
    .line 297
    move-result v7

    .line 298
    if-eqz v7, :cond_c

    .line 299
    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    check-cast v7, Ljava/lang/String;

    .line 305
    .line 306
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 307
    .line 308
    check-cast v9, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    .line 309
    .line 310
    iget-object v10, v9, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mLock:Ljava/lang/Object;

    .line 311
    .line 312
    monitor-enter v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 313
    :try_start_4
    iget-object v9, v9, Lcom/android/server/pm/verify/domain/DomainVerificationService;->mAttachedPkgStates:Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;

    .line 314
    .line 315
    iget-object v9, v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationStateMap;->mPackageNameMap:Landroid/util/ArrayMap;

    .line 316
    .line 317
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v9

    .line 321
    check-cast v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 322
    .line 323
    if-eqz v9, :cond_a

    .line 324
    .line 325
    iget-object v8, v9, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 326
    .line 327
    monitor-exit v10

    .line 328
    goto :goto_4

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    goto :goto_5

    .line 331
    :cond_a
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 332
    const/4 v8, 0x0

    .line 333
    :goto_4
    if-nez v8, :cond_b

    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_b
    :try_start_5
    iget v9, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    .line 337
    .line 338
    add-int/lit8 v10, v9, 0x1

    .line 339
    .line 340
    iput v10, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerificationToken:I

    .line 341
    .line 342
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v9

    .line 346
    invoke-static {v8, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 347
    .line 348
    .line 349
    move-result-object v7

    .line 350
    invoke-virtual {v5, v9, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 351
    .line 352
    .line 353
    goto :goto_3

    .line 354
    :catchall_1
    move-exception v0

    .line 355
    goto/16 :goto_9

    .line 356
    .line 357
    :goto_5
    :try_start_6
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 358
    :try_start_7
    throw v0

    .line 359
    :cond_c
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 360
    .line 361
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 362
    .line 363
    .line 364
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 365
    iget-object v0, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 366
    .line 367
    iget-object v6, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 368
    .line 369
    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 370
    .line 371
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    const-string/jumbo v7, "verifier_timeout"

    .line 376
    .line 377
    .line 378
    const-wide/16 v9, 0x2710

    .line 379
    .line 380
    invoke-static {v6, v7, v9, v10}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 381
    .line 382
    .line 383
    move-result-wide v6

    .line 384
    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 385
    .line 386
    .line 387
    move-result-wide v6

    .line 388
    iget-object v9, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 389
    .line 390
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 391
    .line 392
    const-class v10, Lcom/android/server/DeviceIdleInternal;

    .line 393
    .line 394
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 395
    .line 396
    invoke-interface {v9, v10}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v9

    .line 400
    move-object v11, v9

    .line 401
    check-cast v11, Lcom/android/server/DeviceIdleInternal;

    .line 402
    .line 403
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 404
    .line 405
    .line 406
    move-result v12

    .line 407
    iget-object v9, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 408
    .line 409
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v13

    .line 413
    const-string v19, "domain verification agent"

    .line 414
    .line 415
    const/16 v17, 0x1

    .line 416
    .line 417
    const/16 v18, 0x133

    .line 418
    .line 419
    const/16 v16, 0x0

    .line 420
    .line 421
    move-wide v14, v6

    .line 422
    invoke-interface/range {v11 .. v19}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    .line 426
    .line 427
    .line 428
    move-result v9

    .line 429
    move v10, v3

    .line 430
    :goto_6
    if-ge v10, v9, :cond_11

    .line 431
    .line 432
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v11

    .line 436
    check-cast v11, Ljava/lang/Integer;

    .line 437
    .line 438
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 439
    .line 440
    .line 441
    move-result v11

    .line 442
    invoke-virtual {v5, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 443
    .line 444
    .line 445
    move-result-object v12

    .line 446
    check-cast v12, Landroid/util/Pair;

    .line 447
    .line 448
    iget-object v12, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 449
    .line 450
    check-cast v12, Ljava/lang/String;

    .line 451
    .line 452
    iget-object v13, v0, Lcom/android/server/pm/DomainVerificationConnection;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 453
    .line 454
    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    .line 455
    .line 456
    .line 457
    move-result-object v13

    .line 458
    invoke-interface {v13, v12}, Lcom/android/server/pm/Computer;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 459
    .line 460
    .line 461
    move-result-object v13

    .line 462
    if-nez v13, :cond_d

    .line 463
    .line 464
    const/4 v12, 0x0

    .line 465
    goto/16 :goto_8

    .line 466
    .line 467
    :cond_d
    iget-object v14, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mCollector:Lcom/android/server/pm/verify/domain/DomainVerificationCollector;

    .line 468
    .line 469
    invoke-virtual {v14, v13, v2, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    .line 470
    .line 471
    .line 472
    move-result-object v13

    .line 473
    new-instance v14, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    .line 479
    .line 480
    .line 481
    move-result v15

    .line 482
    :goto_7
    if-ge v3, v15, :cond_10

    .line 483
    .line 484
    if-lez v3, :cond_e

    .line 485
    .line 486
    const-string v2, " "

    .line 487
    .line 488
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    :cond_e
    invoke-virtual {v13, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    check-cast v2, Ljava/lang/String;

    .line 496
    .line 497
    const-string v8, "*."

    .line 498
    .line 499
    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 500
    .line 501
    .line 502
    move-result v8

    .line 503
    if-eqz v8, :cond_f

    .line 504
    .line 505
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v2

    .line 509
    :cond_f
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    add-int/lit8 v3, v3, 0x1

    .line 513
    .line 514
    const/4 v2, 0x1

    .line 515
    goto :goto_7

    .line 516
    :cond_10
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v2

    .line 520
    new-instance v3, Landroid/content/Intent;

    .line 521
    .line 522
    const-string v8, "android.intent.action.INTENT_FILTER_NEEDS_VERIFICATION"

    .line 523
    .line 524
    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mVerifierComponent:Landroid/content/ComponentName;

    .line 528
    .line 529
    invoke-virtual {v3, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 530
    .line 531
    .line 532
    move-result-object v3

    .line 533
    const-string v8, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_ID"

    .line 534
    .line 535
    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    .line 537
    .line 538
    move-result-object v3

    .line 539
    const-string v8, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_URI_SCHEME"

    .line 540
    .line 541
    const-string v11, "https"

    .line 542
    .line 543
    invoke-virtual {v3, v8, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    .line 545
    .line 546
    move-result-object v3

    .line 547
    const-string v8, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_HOSTS"

    .line 548
    .line 549
    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    .line 551
    .line 552
    move-result-object v2

    .line 553
    const-string v3, "android.content.pm.extra.INTENT_FILTER_VERIFICATION_PACKAGE_NAME"

    .line 554
    .line 555
    invoke-virtual {v2, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    const/high16 v3, 0x10000000

    .line 560
    .line 561
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 562
    .line 563
    .line 564
    move-result-object v2

    .line 565
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 566
    .line 567
    .line 568
    move-result-object v3

    .line 569
    const-string v16, ""

    .line 570
    .line 571
    const/4 v14, 0x0

    .line 572
    const/16 v15, 0x133

    .line 573
    .line 574
    move-object v11, v3

    .line 575
    move-wide v12, v6

    .line 576
    invoke-virtual/range {v11 .. v16}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v8, v1, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mContext:Landroid/content/Context;

    .line 580
    .line 581
    sget-object v11, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 582
    .line 583
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 584
    .line 585
    .line 586
    move-result-object v3

    .line 587
    const/4 v12, 0x0

    .line 588
    invoke-virtual {v8, v2, v11, v12, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 589
    .line 590
    .line 591
    :goto_8
    add-int/lit8 v10, v10, 0x1

    .line 592
    .line 593
    const/4 v2, 0x1

    .line 594
    const/4 v3, 0x0

    .line 595
    goto/16 :goto_6

    .line 596
    .line 597
    :cond_11
    return v2

    .line 598
    :goto_9
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 599
    throw v0
.end method

.method public final sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    :goto_0
    if-ltz v1, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/util/Pair;

    .line 21
    .line 22
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mRequests:Landroid/util/ArrayMap;

    .line 31
    .line 32
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV1;->mConnection:Lcom/android/server/pm/DomainVerificationConnection;

    .line 43
    .line 44
    const/4 v0, 0x2

    .line 45
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/DomainVerificationConnection;->schedule(ILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    throw p0
.end method
