.class public final synthetic Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Ljava/util/List;

.field public final synthetic f$4:Ljava/util/List;

.field public final synthetic f$5:Ljava/util/List;

.field public final synthetic f$6:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$5:Ljava/util/List;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$6:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 4
    .line 5
    iget v6, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$1:I

    .line 6
    .line 7
    iget-object v7, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$2:Ljava/util/List;

    .line 8
    .line 9
    iget-object v8, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$3:Ljava/util/List;

    .line 10
    .line 11
    iget-object v4, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$4:Ljava/util/List;

    .line 12
    .line 13
    iget-object v9, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$5:Ljava/util/List;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$$ExternalSyntheticLambda4;->f$6:Ljava/util/List;

    .line 16
    .line 17
    const-string v10, ") "

    .line 18
    .line 19
    const-string/jumbo v11, "rollbackSystemKeyStoreAsUser("

    .line 20
    .line 21
    .line 22
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 23
    .line 24
    const-string/jumbo v12, "rollbackSystemKeyStoreAsUser "

    .line 25
    .line 26
    .line 27
    const-string v13, "RollbackRefreshOperation"

    .line 28
    .line 29
    :try_start_0
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    :try_start_1
    new-instance v5, Landroid/os/UserHandle;

    .line 32
    .line 33
    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v3, v5}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 37
    .line 38
    .line 39
    move-result-object v14
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :try_start_2
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 41
    .line 42
    .line 43
    move-result-object v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 44
    if-nez v3, :cond_0

    .line 45
    .line 46
    :try_start_3
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    .line 48
    .line 49
    goto/16 :goto_13

    .line 50
    .line 51
    :catch_0
    move-exception v0

    .line 52
    move-object/from16 p0, v10

    .line 53
    .line 54
    move-object/from16 v16, v11

    .line 55
    .line 56
    goto/16 :goto_10

    .line 57
    .line 58
    :catch_1
    move-exception v0

    .line 59
    move-object v3, v10

    .line 60
    move-object v2, v11

    .line 61
    goto/16 :goto_11

    .line 62
    .line 63
    :catch_2
    move-exception v0

    .line 64
    goto/16 :goto_12

    .line 65
    .line 66
    :cond_0
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object v15

    .line 75
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v16
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljava/security/cert/CertificateException; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 79
    move-object/from16 p0, v10

    .line 80
    .line 81
    iget-object v10, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mCertPolicy:Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 82
    .line 83
    if-eqz v16, :cond_7

    .line 84
    .line 85
    :try_start_5
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v16

    .line 89
    move-object/from16 v17, v15

    .line 90
    .line 91
    move-object/from16 v15, v16

    .line 92
    .line 93
    check-cast v15, Ljava/lang/String;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/security/cert/CertificateException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    .line 95
    move-object/from16 v16, v11

    .line 96
    .line 97
    const/4 v11, 0x1

    .line 98
    :try_start_6
    invoke-interface {v3, v15, v11}, Landroid/security/IKeyChainService;->getCertificateFromTrustCredential(Ljava/lang/String;Z)[B

    .line 99
    .line 100
    .line 101
    move-result-object v11

    .line 102
    if-eqz v11, :cond_5

    .line 103
    .line 104
    invoke-static {v11}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v11

    .line 108
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v18

    .line 116
    if-eqz v18, :cond_4

    .line 117
    .line 118
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v18

    .line 122
    move-object/from16 v19, v3

    .line 123
    .line 124
    move-object/from16 v3, v18

    .line 125
    .line 126
    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 127
    .line 128
    if-eqz v3, :cond_2

    .line 129
    .line 130
    move-object/from16 v18, v11

    .line 131
    .line 132
    const/4 v11, 0x2

    .line 133
    invoke-virtual {v10, v3, v11, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    if-eqz v11, :cond_3

    .line 138
    .line 139
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-nez v11, :cond_1

    .line 147
    .line 148
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_2

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    goto/16 :goto_f

    .line 154
    .line 155
    :catch_3
    move-exception v0

    .line 156
    goto/16 :goto_c

    .line 157
    .line 158
    :catch_4
    move-exception v0

    .line 159
    goto/16 :goto_d

    .line 160
    .line 161
    :catch_5
    move-exception v0

    .line 162
    goto/16 :goto_e

    .line 163
    .line 164
    :cond_1
    invoke-interface {v8, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_2
    move-object/from16 v18, v11

    .line 169
    .line 170
    :cond_3
    :goto_2
    move-object/from16 v11, v18

    .line 171
    .line 172
    move-object/from16 v3, v19

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    move-object/from16 v19, v3

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_5
    move-object/from16 v19, v3

    .line 179
    .line 180
    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    invoke-interface {v8, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    if-eqz v3, :cond_6

    .line 188
    .line 189
    invoke-interface {v8, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    :cond_6
    :goto_3
    move-object/from16 v10, p0

    .line 193
    .line 194
    move-object/from16 v11, v16

    .line 195
    .line 196
    move-object/from16 v15, v17

    .line 197
    .line 198
    move-object/from16 v3, v19

    .line 199
    .line 200
    goto :goto_0

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    :goto_4
    move-object/from16 v16, v11

    .line 203
    .line 204
    goto/16 :goto_f

    .line 205
    .line 206
    :catch_6
    move-exception v0

    .line 207
    :goto_5
    move-object/from16 v16, v11

    .line 208
    .line 209
    goto/16 :goto_c

    .line 210
    .line 211
    :catch_7
    move-exception v0

    .line 212
    :goto_6
    move-object/from16 v16, v11

    .line 213
    .line 214
    goto/16 :goto_d

    .line 215
    .line 216
    :catch_8
    move-exception v0

    .line 217
    :goto_7
    move-object/from16 v16, v11

    .line 218
    .line 219
    goto/16 :goto_e

    .line 220
    .line 221
    :cond_7
    move-object/from16 v16, v11

    .line 222
    .line 223
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 224
    .line 225
    .line 226
    move-result-object v3

    .line 227
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    if-eqz v5, :cond_8

    .line 232
    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    check-cast v5, Ljava/lang/String;

    .line 238
    .line 239
    invoke-interface {v7, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_8
    invoke-virtual {v2, v6, v9}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Ljava/util/HashMap;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    .line 259
    .line 260
    move-result v5

    .line 261
    if-eqz v5, :cond_a

    .line 262
    .line 263
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Ljava/util/Map$Entry;

    .line 268
    .line 269
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v11

    .line 273
    check-cast v11, Ljava/lang/String;

    .line 274
    .line 275
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 280
    .line 281
    if-eqz v5, :cond_9

    .line 282
    .line 283
    const/4 v15, 0x3

    .line 284
    invoke-virtual {v10, v5, v15, v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    .line 285
    .line 286
    .line 287
    move-result v15

    .line 288
    if-eqz v15, :cond_9

    .line 289
    .line 290
    invoke-interface {v9, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    goto :goto_9

    .line 300
    :cond_a
    invoke-virtual {v2, v6, v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(ILjava/util/List;)V

    .line 301
    .line 302
    .line 303
    new-instance v11, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;

    .line 304
    .line 305
    const/4 v2, 0x0

    .line 306
    const/4 v3, 0x0

    .line 307
    move-object v0, v11

    .line 308
    move v5, v6

    .line 309
    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V

    .line 310
    .line 311
    .line 312
    const/4 v0, 0x0

    .line 313
    new-array v0, v0, [Ljava/lang/Void;

    .line 314
    .line 315
    invoke-virtual {v11, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 316
    .line 317
    .line 318
    const-string/jumbo v0, "systemDisabledList"

    .line 319
    .line 320
    .line 321
    invoke-virtual {v10, v6, v0, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 322
    .line 323
    .line 324
    const-string/jumbo v0, "systemPrevDisabledList"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10, v6, v0, v8}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 328
    .line 329
    .line 330
    const-string/jumbo v0, "userRemovedList"

    .line 331
    .line 332
    .line 333
    invoke-virtual {v10, v6, v0, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 334
    .line 335
    .line 336
    :goto_a
    :try_start_7
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9

    .line 337
    .line 338
    .line 339
    goto/16 :goto_13

    .line 340
    .line 341
    :catch_9
    move-exception v0

    .line 342
    goto :goto_10

    .line 343
    :catch_a
    move-exception v0

    .line 344
    :goto_b
    move-object/from16 v3, p0

    .line 345
    .line 346
    move-object/from16 v2, v16

    .line 347
    .line 348
    goto/16 :goto_11

    .line 349
    .line 350
    :catchall_2
    move-exception v0

    .line 351
    move-object/from16 p0, v10

    .line 352
    .line 353
    goto/16 :goto_4

    .line 354
    .line 355
    :catch_b
    move-exception v0

    .line 356
    move-object/from16 p0, v10

    .line 357
    .line 358
    goto/16 :goto_5

    .line 359
    .line 360
    :catch_c
    move-exception v0

    .line 361
    move-object/from16 p0, v10

    .line 362
    .line 363
    goto/16 :goto_6

    .line 364
    .line 365
    :catch_d
    move-exception v0

    .line 366
    move-object/from16 p0, v10

    .line 367
    .line 368
    goto/16 :goto_7

    .line 369
    .line 370
    :goto_c
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .line 387
    .line 388
    goto :goto_a

    .line 389
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 390
    .line 391
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    goto :goto_a

    .line 408
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 424
    .line 425
    .line 426
    goto :goto_a

    .line 427
    :goto_f
    :try_start_9
    invoke-virtual {v14}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 428
    .line 429
    .line 430
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_9

    .line 431
    :catch_e
    move-exception v0

    .line 432
    move-object/from16 p0, v10

    .line 433
    .line 434
    move-object/from16 v16, v11

    .line 435
    .line 436
    goto :goto_b

    .line 437
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 438
    .line 439
    move-object/from16 v2, v16

    .line 440
    .line 441
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    move-object/from16 v3, p0

    .line 448
    .line 449
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v0

    .line 459
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    .line 461
    .line 462
    goto :goto_13

    .line 463
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    .line 483
    .line 484
    goto :goto_13

    .line 485
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 486
    .line 487
    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    .line 499
    .line 500
    :goto_13
    return-void
.end method
