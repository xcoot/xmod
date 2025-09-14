.class public final Lcom/android/server/credentials/PrepareGetRequestSession;
.super Lcom/android/server/credentials/GetRequestSession;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

.field public final mPrimaryProviders:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;JLandroid/credentials/IPrepareGetCredentialCallback;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lcom/android/server/credentials/GetRequestSession;-><init>(Landroid/content/Context;Lcom/android/server/credentials/CredentialManagerService$SessionManager;Ljava/lang/Object;IILandroid/credentials/IGetCredentialCallback;Landroid/credentials/GetCredentialRequest;Landroid/service/credentials/CallingAppInfo;Ljava/util/Set;Ljava/util/Set;Landroid/os/CancellationSignal;J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 5
    .line 6
    invoke-virtual {p1, p7}, Lcom/android/server/credentials/metrics/RequestSessionMetric;->collectGetFlowInitialMetricInfo(Landroid/credentials/GetCredentialRequest;)V

    .line 7
    .line 8
    .line 9
    iput-object p14, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    .line 10
    .line 11
    iput-object p10, p0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onProviderStatusChanged(Lcom/android/server/credentials/ProviderSession$Status;Landroid/content/ComponentName;Lcom/android/server/credentials/ProviderSession$CredentialsSource;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v3, "Provider Status changed with status: "

    .line 8
    .line 9
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, ", and source: "

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-object/from16 v3, p3

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v4, "CredentialManager"

    .line 30
    .line 31
    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    const/4 v3, 0x2

    .line 41
    if-eq v2, v3, :cond_0

    .line 42
    .line 43
    const-string v0, "Unexpected source"

    .line 44
    .line 45
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    goto/16 :goto_7

    .line 49
    .line 50
    :cond_0
    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->NO_CREDENTIALS_FROM_AUTH_ENTRY:Lcom/android/server/credentials/ProviderSession$Status;

    .line 51
    .line 52
    if-ne v1, v2, :cond_1

    .line 53
    .line 54
    move-object/from16 v2, p2

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lcom/android/server/credentials/GetRequestSession;->handleEmptyAuthenticationSelection(Landroid/content/ComponentName;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_7

    .line 60
    .line 61
    :cond_1
    sget-object v2, Lcom/android/server/credentials/ProviderSession$Status;->CREDENTIALS_RECEIVED:Lcom/android/server/credentials/ProviderSession$Status;

    .line 62
    .line 63
    if-ne v1, v2, :cond_c

    .line 64
    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataAndInitiateUi()V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_7

    .line 69
    .line 70
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/RequestSession;->isAnyProviderPending()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    return-void

    .line 77
    :cond_3
    iget-object v1, v0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 80
    .line 81
    invoke-virtual {v2}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    const-string v3, "android.permission.CREDENTIAL_MANAGER_QUERY_CANDIDATE_CREDENTIALS"

    .line 86
    .line 87
    invoke-static {v1, v2, v3}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/RequestSession;->isUiInvocationNeeded()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const-string v2, "EXCEPTION while mPendingCallback.onResponse"

    .line 96
    .line 97
    if-eqz v1, :cond_b

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/credentials/RequestSession;->getProviderDataForUi()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_b

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    if-nez v6, :cond_4

    .line 111
    .line 112
    move-object v7, v3

    .line 113
    goto :goto_0

    .line 114
    :cond_4
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 115
    .line 116
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 117
    .line 118
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    new-instance v7, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    .line 127
    .line 128
    const/4 v8, 0x0

    .line 129
    invoke-direct {v7, v8}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v7, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    .line 137
    .line 138
    const/4 v8, 0x1

    .line 139
    invoke-direct {v7, v8}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-interface {v5, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    check-cast v5, Ljava/util/Set;

    .line 155
    .line 156
    move-object v7, v5

    .line 157
    :goto_0
    const/4 v5, 0x0

    .line 158
    if-nez v6, :cond_5

    .line 159
    .line 160
    move v8, v5

    .line 161
    goto :goto_1

    .line 162
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 163
    .line 164
    .line 165
    move-result-object v8

    .line 166
    new-instance v9, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    .line 167
    .line 168
    const/4 v10, 0x2

    .line 169
    invoke-direct {v9, v10}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    new-instance v9, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    .line 177
    .line 178
    const/4 v10, 0x0

    .line 179
    invoke-direct {v9, v10}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>(I)V

    .line 180
    .line 181
    .line 182
    invoke-interface {v8, v9}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    :goto_1
    if-nez v6, :cond_6

    .line 187
    .line 188
    move v9, v5

    .line 189
    goto :goto_2

    .line 190
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    new-instance v5, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;

    .line 195
    .line 196
    const/4 v9, 0x3

    .line 197
    invoke-direct {v5, v9}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda0;-><init>(I)V

    .line 198
    .line 199
    .line 200
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v5, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;

    .line 205
    .line 206
    const/4 v9, 0x1

    .line 207
    invoke-direct {v5, v9}, Lcom/android/server/credentials/PrepareGetRequestSession$$ExternalSyntheticLambda3;-><init>(I)V

    .line 208
    .line 209
    .line 210
    invoke-interface {v1, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    move v9, v1

    .line 215
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mProviders:Ljava/util/Map;

    .line 221
    .line 222
    check-cast v5, Ljava/util/concurrent/ConcurrentHashMap;

    .line 223
    .line 224
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 225
    .line 226
    .line 227
    move-result-object v5

    .line 228
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    :cond_7
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    if-eqz v10, :cond_8

    .line 237
    .line 238
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v10

    .line 242
    check-cast v10, Lcom/android/server/credentials/ProviderSession;

    .line 243
    .line 244
    invoke-virtual {v10}, Lcom/android/server/credentials/ProviderSession;->prepareUiData()Landroid/credentials/selection/ProviderData;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    if-eqz v10, :cond_7

    .line 249
    .line 250
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 255
    .line 256
    .line 257
    move-result v5

    .line 258
    if-nez v5, :cond_a

    .line 259
    .line 260
    new-instance v14, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .line 264
    .line 265
    iget-object v3, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrimaryProviders:Ljava/util/Set;

    .line 266
    .line 267
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 272
    .line 273
    .line 274
    move-result v5

    .line 275
    if-eqz v5, :cond_9

    .line 276
    .line 277
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    check-cast v5, Landroid/content/ComponentName;

    .line 282
    .line 283
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_4

    .line 291
    :cond_9
    iget-object v10, v0, Lcom/android/server/credentials/RequestSession;->mRequestId:Landroid/os/IBinder;

    .line 292
    .line 293
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mClientRequest:Ljava/lang/Object;

    .line 294
    .line 295
    move-object v11, v3

    .line 296
    check-cast v11, Landroid/credentials/GetCredentialRequest;

    .line 297
    .line 298
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 299
    .line 300
    invoke-virtual {v3}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v12

    .line 304
    iget-object v3, v0, Lcom/android/server/credentials/RequestSession;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mClientAppInfo:Landroid/service/credentials/CallingAppInfo;

    .line 307
    .line 308
    invoke-virtual {v5}, Landroid/service/credentials/CallingAppInfo;->getPackageName()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    const-string v13, "android.permission.CREDENTIAL_MANAGER_SET_ALLOWED_PROVIDERS"

    .line 313
    .line 314
    invoke-static {v3, v5, v13}, Landroid/service/credentials/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 315
    .line 316
    .line 317
    move-result v13

    .line 318
    const/4 v15, 0x0

    .line 319
    invoke-static/range {v10 .. v15}, Landroid/credentials/selection/RequestInfo;->newGetRequestInfo(Landroid/os/IBinder;Landroid/credentials/GetCredentialRequest;Ljava/lang/String;ZLjava/util/List;Z)Landroid/credentials/selection/RequestInfo;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    iget-object v5, v0, Lcom/android/server/credentials/RequestSession;->mRequestSessionMetric:Lcom/android/server/credentials/metrics/RequestSessionMetric;

    .line 324
    .line 325
    iget-object v10, v0, Lcom/android/server/credentials/RequestSession;->mCredentialManagerUi:Lcom/android/server/credentials/CredentialManagerUi;

    .line 326
    .line 327
    invoke-virtual {v10, v3, v1, v5}, Lcom/android/server/credentials/CredentialManagerUi;->createPendingIntent(Landroid/credentials/selection/RequestInfo;Ljava/util/ArrayList;Lcom/android/server/credentials/metrics/RequestSessionMetric;)Landroid/app/PendingIntent;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    move-object v10, v1

    .line 332
    goto :goto_5

    .line 333
    :cond_a
    move-object v10, v3

    .line 334
    :goto_5
    :try_start_0
    iget-object v0, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    .line 335
    .line 336
    new-instance v1, Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 337
    .line 338
    move-object v5, v1

    .line 339
    invoke-direct/range {v5 .. v10}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v0, v1}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    .line 344
    .line 345
    goto :goto_6

    .line 346
    :catch_0
    move-exception v0

    .line 347
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 348
    .line 349
    .line 350
    :goto_6
    return-void

    .line 351
    :cond_b
    :try_start_1
    iget-object v0, v0, Lcom/android/server/credentials/PrepareGetRequestSession;->mPrepareGetCredentialCallback:Landroid/credentials/IPrepareGetCredentialCallback;

    .line 352
    .line 353
    new-instance v1, Landroid/credentials/PrepareGetCredentialResponseInternal;

    .line 354
    .line 355
    const/4 v9, 0x0

    .line 356
    const/4 v10, 0x0

    .line 357
    const/4 v7, 0x0

    .line 358
    const/4 v8, 0x0

    .line 359
    move-object v5, v1

    .line 360
    invoke-direct/range {v5 .. v10}, Landroid/credentials/PrepareGetCredentialResponseInternal;-><init>(ZLjava/util/Set;ZZLandroid/app/PendingIntent;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v0, v1}, Landroid/credentials/IPrepareGetCredentialCallback;->onResponse(Landroid/credentials/PrepareGetCredentialResponseInternal;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 364
    .line 365
    .line 366
    goto :goto_7

    .line 367
    :catch_1
    move-exception v0

    .line 368
    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 369
    .line 370
    .line 371
    :cond_c
    :goto_7
    return-void
.end method
