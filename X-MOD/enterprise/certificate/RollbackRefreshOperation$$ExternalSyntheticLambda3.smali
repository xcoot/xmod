.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$4:Ljava/util/Map;

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 5
    iget v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$1:I

    .line 7
    iget-object v7, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$2:Ljava/util/List;

    .line 9
    iget-object v8, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$3:Ljava/util/List;

    .line 11
    iget-object v9, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda3;->f$4:Ljava/util/Map;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const-string v10, ") "

    .line 18
    const-string/jumbo v11, "refreshSystemKeyStoreAsUser("

    .line 21
    const-string/jumbo v12, "refreshSystemKeyStoreAsUser "

    .line 24
    const-string v13, "RollbackRefreshOperation"

    .line 26
    :try_start_0
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :try_start_1
    new-instance v2, Landroid/os/UserHandle;

    .line 30
    invoke-direct {v2, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 33
    invoke-static {v0, v2}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 36
    move-result-object v14
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 37
    :try_start_2
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 40
    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    if-nez v0, :cond_0

    .line 43
    :try_start_3
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 46
    goto/16 :goto_f

    .line 48
    :catch_0
    move-exception v0

    .line 49
    move-object/from16 p0, v10

    .line 51
    goto/16 :goto_c

    .line 53
    :catch_1
    move-exception v0

    .line 54
    move-object v2, v10

    .line 55
    goto/16 :goto_d

    .line 57
    :catch_2
    move-exception v0

    .line 58
    goto/16 :goto_e

    .line 60
    :cond_0
    :try_start_4
    invoke-interface {v0}, Landroid/security/IKeyChainService;->allSystemAliases()Ljava/util/List;

    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 72
    iget-object v15, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 74
    if-eqz v3, :cond_4

    .line 76
    :try_start_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Ljava/lang/String;

    .line 82
    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 88
    const/4 v4, 0x1

    .line 89
    invoke-interface {v0, v3, v4}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    .line 92
    move-result-object v4

    .line 93
    if-eqz v4, :cond_3

    .line 95
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 98
    move-result-object v4

    .line 99
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 102
    move-result-object v4

    .line 103
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_3

    .line 109
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    move-result-object v5

    .line 113
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 115
    if-eqz v5, :cond_1

    .line 117
    move-object/from16 p0, v2

    .line 119
    const/4 v2, 0x2

    .line 120
    invoke-virtual {v15, v5, v2, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 123
    move-result v2

    .line 124
    if-nez v2, :cond_2

    .line 126
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v0, v3}, Landroid/security/IKeyChainService;->containsAlias(Ljava/lang/String;)Z

    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_2

    .line 135
    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    goto :goto_2

    .line 139
    :catchall_0
    move-exception v0

    .line 140
    move-object/from16 p0, v10

    .line 142
    goto/16 :goto_b

    .line 144
    :catch_3
    move-exception v0

    .line 145
    move-object/from16 p0, v10

    .line 147
    goto/16 :goto_8

    .line 149
    :catch_4
    move-exception v0

    .line 150
    move-object/from16 p0, v10

    .line 152
    goto/16 :goto_9

    .line 154
    :catch_5
    move-exception v0

    .line 155
    move-object/from16 p0, v10

    .line 157
    goto/16 :goto_a

    .line 159
    :cond_1
    move-object/from16 p0, v2

    .line 161
    :cond_2
    :goto_2
    move-object/from16 v2, p0

    .line 163
    goto :goto_1

    .line 164
    :cond_3
    move-object/from16 p0, v2

    .line 166
    move-object/from16 v2, p0

    .line 168
    goto :goto_0

    .line 169
    :cond_4
    invoke-interface {v0}, Landroid/security/IKeyChainService;->userAliases()Ljava/util/List;

    .line 172
    move-result-object v2

    .line 173
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 176
    move-result-object v2

    .line 177
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    move-result v3

    .line 181
    const/4 v5, 0x0

    .line 182
    if-eqz v3, :cond_8

    .line 184
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 187
    move-result-object v3

    .line 188
    check-cast v3, Ljava/lang/String;

    .line 190
    invoke-interface {v0, v3, v5}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    .line 193
    move-result-object v4

    .line 194
    if-eqz v4, :cond_7

    .line 196
    invoke-static {v4}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 199
    move-result-object v4

    .line 200
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 203
    move-result-object v4

    .line 204
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 207
    move-result v5

    .line 208
    if-eqz v5, :cond_7

    .line 210
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v5

    .line 214
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 216
    if-eqz v5, :cond_5

    .line 218
    move-object/from16 p0, v0

    .line 220
    const/4 v0, 0x3

    .line 221
    invoke-virtual {v15, v5, v0, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_6

    .line 227
    invoke-interface {v9, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    goto :goto_5

    .line 231
    :cond_5
    move-object/from16 p0, v0

    .line 233
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    .line 235
    goto :goto_4

    .line 236
    :cond_7
    move-object/from16 p0, v0

    .line 238
    move-object/from16 v0, p0

    .line 240
    goto :goto_3

    .line 241
    :cond_8
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 243
    invoke-virtual {v0, v6, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->installCertificates(ILjava/util/Map;)V

    .line 246
    new-instance v3, Ljava/util/ArrayList;

    .line 248
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 261
    new-instance v4, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 263
    const/4 v2, 0x1

    .line 264
    const/16 v16, 0x0

    .line 266
    move-object v0, v4

    .line 267
    move-object/from16 v17, v4

    .line 269
    move-object/from16 v4, v16

    .line 271
    move-object/from16 p0, v10

    .line 273
    move v10, v5

    .line 274
    move v5, v6

    .line 275
    :try_start_6
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V

    .line 278
    new-array v0, v10, [Ljava/lang/Void;

    .line 280
    move-object/from16 v1, v17

    .line 282
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 285
    const-string/jumbo v0, "systemDisabledList"

    .line 288
    invoke-virtual {v15, v6, v0, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 291
    const-string/jumbo v0, "systemPrevDisabledList"

    .line 294
    invoke-virtual {v15, v6, v0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 297
    const-string/jumbo v0, "userRemovedList"

    .line 300
    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v15, v6, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 307
    :goto_6
    :try_start_7
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 310
    goto/16 :goto_f

    .line 312
    :catch_6
    move-exception v0

    .line 313
    goto :goto_c

    .line 314
    :catch_7
    move-exception v0

    .line 315
    :goto_7
    move-object/from16 v2, p0

    .line 317
    goto :goto_d

    .line 318
    :catchall_1
    move-exception v0

    .line 319
    goto :goto_b

    .line 320
    :catch_8
    move-exception v0

    .line 321
    goto :goto_8

    .line 322
    :catch_9
    move-exception v0

    .line 323
    goto :goto_9

    .line 324
    :catch_a
    move-exception v0

    .line 325
    goto :goto_a

    .line 326
    :goto_8
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object v0

    .line 341
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    goto :goto_6

    .line 345
    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 359
    move-result-object v0

    .line 360
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    goto :goto_6

    .line 364
    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 379
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 382
    goto :goto_6

    .line 383
    :goto_b
    :try_start_9
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 386
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_6

    .line 387
    :catch_b
    move-exception v0

    .line 388
    move-object/from16 p0, v10

    .line 390
    goto :goto_7

    .line 391
    :goto_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 393
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 399
    move-object/from16 v2, p0

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 410
    move-result-object v0

    .line 411
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    goto :goto_f

    .line 415
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 417
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 432
    move-result-object v0

    .line 433
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    goto :goto_f

    .line 437
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    move-result-object v0

    .line 449
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :goto_f
    return-void
.end method
