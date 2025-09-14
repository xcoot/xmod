.class public final Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;
.super Landroid/os/AsyncTask;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mAliases:Ljava/lang/Object;

.field public final mCerts:Ljava/lang/Object;

.field public final mOperation:I

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;IILjava/util/Set;Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->$r8$classId:I

    .line 6
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 7
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mOperation:I

    .line 8
    iput p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    .line 9
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mAliases:Ljava/lang/Object;

    .line 10
    iput-object p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mCerts:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;ILjava/util/List;Ljava/util/List;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput p2, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mOperation:I

    .line 3
    iput-object p3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mAliases:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mCerts:Ljava/lang/Object;

    .line 5
    iput p5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    return-void
.end method

.method public static getPemMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object v2

    .line 14
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 17
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/String;

    .line 43
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    .line 49
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 52
    new-instance v4, Ljava/util/HashSet;

    .line 54
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object v5

    .line 61
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 67
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object v6

    .line 71
    check-cast v6, Ljava/util/Map$Entry;

    .line 73
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 76
    move-result-object v7

    .line 77
    check-cast v7, Ljava/lang/String;

    .line 79
    invoke-static {v7}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v7

    .line 83
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_1

    .line 89
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 92
    move-result-object v7

    .line 93
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 95
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 105
    move-result v5

    .line 106
    if-lez v5, :cond_0

    .line 108
    invoke-static {v3}, Lcom/android/server/enterprise/utils/CertificateUtil;->convertX509ListToPem(Ljava/util/List;)[B

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    return-object v0
.end method

.method public static removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "_#_"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, -0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    add-int/lit8 v1, v0, 0x3

    .line 12
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    sget-object v2, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 18
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    :catch_0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    check-cast p1, [Ljava/lang/Integer;

    .line 8
    const/4 v0, 0x0

    .line 9
    aget-object p1, p1, v0

    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    move-result p1

    .line 15
    iget v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mOperation:I

    .line 17
    const/4 v2, 0x1

    .line 18
    if-eqz v1, :cond_9

    .line 20
    if-eq v1, v2, :cond_0

    .line 22
    goto/16 :goto_6

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 26
    iget-object v1, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 28
    monitor-enter v1

    .line 29
    :try_start_0
    iget v3, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    .line 31
    const/4 v4, 0x4

    .line 32
    if-ne v3, v4, :cond_1

    .line 34
    const/4 v3, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v3, 0x3f2

    .line 38
    :goto_0
    new-instance v4, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 40
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 42
    iget-object v5, v5, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {v4, v5, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mAliases:Ljava/lang/Object;

    .line 49
    check-cast p0, Ljava/util/Set;

    .line 51
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p0

    .line 55
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_8

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->removeAliasSeparator(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_2

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    aget-object v5, p1, v0

    .line 80
    aget-object p1, p1, v2

    .line 82
    const-string v6, "USRCERT_"

    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_6

    .line 90
    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->isCertificateEntry(ILjava/lang/String;)Z

    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    const-string v5, "USRCERT_"

    .line 99
    invoke-virtual {v4, v3, p1, v5}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 102
    move-result-object v5

    .line 103
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    const-string v7, "alias = "

    .line 110
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v7, ", uid = "

    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    if-nez v5, :cond_4

    .line 130
    const-string p1, "RollbackRefreshOperation"

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    .line 134
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v7, "NativeKeyStoreOperation - Could not retrieve user certificate from "

    .line 139
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v5

    .line 149
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    goto :goto_1

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    goto/16 :goto_3

    .line 156
    :cond_4
    const/4 v7, 0x0

    .line 157
    invoke-virtual {v4, v3, v5, v7, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(I[B[BLjava/lang/String;)Z

    .line 160
    move-result p1

    .line 161
    if-nez p1, :cond_5

    .line 163
    const-string p1, "RollbackRefreshOperation"

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    const-string v7, "NativeKeyStoreOperation - Could not delete certificate chain - "

    .line 172
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v5

    .line 182
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    goto/16 :goto_1

    .line 187
    :cond_5
    const-string p1, "RollbackRefreshOperation"

    .line 189
    new-instance v5, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    const-string v7, "NativeKeyStoreOperation - certificate chain deleted successfully - "

    .line 196
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object v5

    .line 206
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto/16 :goto_1

    .line 211
    :cond_6
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 213
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    const-string v7, "alias = "

    .line 218
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v7, ", type = "

    .line 226
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v5, ", uid = "

    .line 234
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    move-result-object v5

    .line 244
    invoke-virtual {v4, v3, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->deleteEntry(ILjava/lang/String;)Z

    .line 247
    move-result p1

    .line 248
    if-eqz p1, :cond_7

    .line 250
    const-string p1, "RollbackRefreshOperation"

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const-string v7, "NativeKeyStoreOperation - Entry deleted successfully - "

    .line 259
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v5

    .line 269
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    goto/16 :goto_1

    .line 274
    :cond_7
    const-string p1, "RollbackRefreshOperation"

    .line 276
    new-instance v6, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    const-string v7, "NativeKeyStoreOperation - Fail to delete entry - "

    .line 283
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object v5

    .line 293
    invoke-static {p1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    goto/16 :goto_1

    .line 298
    :cond_8
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 301
    monitor-exit v1

    .line 302
    goto :goto_6

    .line 303
    :catchall_1
    move-exception p0

    .line 304
    goto :goto_4

    .line 305
    :goto_3
    invoke-virtual {v4}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 308
    throw p0

    .line 309
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    throw p0

    .line 311
    :cond_9
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 313
    iget-object v1, v1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mKeyStoreLock:Ljava/lang/Object;

    .line 315
    monitor-enter v1

    .line 316
    :try_start_3
    new-instance v3, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;

    .line 318
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->this$0:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 320
    iget-object v4, v4, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mContext:Landroid/content/Context;

    .line 322
    invoke-direct {v3, v4, p1}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;-><init>(Landroid/content/Context;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 325
    :try_start_4
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mCerts:Ljava/lang/Object;

    .line 327
    check-cast p1, Ljava/util/Map;

    .line 329
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->getPemMap(Ljava/util/Map;)Ljava/util/Map;

    .line 332
    move-result-object p1

    .line 333
    check-cast p1, Ljava/util/HashMap;

    .line 335
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 338
    move-result-object p1

    .line 339
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 342
    move-result-object p1

    .line 343
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 346
    move-result v4

    .line 347
    if-eqz v4, :cond_b

    .line 349
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 352
    move-result-object v4

    .line 353
    check-cast v4, Ljava/util/Map$Entry;

    .line 355
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 358
    move-result-object v5

    .line 359
    check-cast v5, Ljava/lang/String;

    .line 361
    invoke-static {v5}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->-$$Nest$smsplitCertTypeAlias(Ljava/lang/String;)[Ljava/lang/String;

    .line 364
    move-result-object v5

    .line 365
    if-nez v5, :cond_a

    .line 367
    goto :goto_5

    .line 368
    :cond_a
    aget-object v6, v5, v0

    .line 370
    aget-object v5, v5, v2

    .line 372
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 375
    move-result-object v4

    .line 376
    check-cast v4, [B

    .line 378
    invoke-virtual {p0, v6, v5, v4, v3}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->reinstallCert(Ljava/lang/String;Ljava/lang/String;[BLcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 381
    goto :goto_5

    .line 382
    :catchall_2
    move-exception p0

    .line 383
    goto :goto_7

    .line 384
    :cond_b
    :try_start_5
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 387
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 388
    :goto_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 390
    return-object p0

    .line 391
    :catchall_3
    move-exception p0

    .line 392
    goto :goto_8

    .line 393
    :goto_7
    :try_start_6
    invoke-virtual {v3}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->disconnect()V

    .line 396
    throw p0

    .line 397
    :goto_8
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 398
    throw p0

    .line 399
    :pswitch_0
    check-cast p1, [Ljava/lang/Void;

    .line 401
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;

    .line 403
    invoke-direct {p1, p0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;)V

    .line 406
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    .line 409
    move-result-object p0

    .line 410
    check-cast p0, Ljava/lang/Boolean;

    .line 412
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    return-object p0

    .line 416
    nop

    .line 417
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public reinstallCert(Ljava/lang/String;Ljava/lang/String;[BLcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;)V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string/jumbo v1, "reinstallCert - type = "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", alias = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "RollbackRefreshOperation"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p1, :cond_d

    .line 31
    if-eqz p2, :cond_d

    .line 33
    if-nez p3, :cond_0

    .line 35
    goto/16 :goto_2

    .line 37
    :cond_0
    iget p0, p0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation$TrustedStoreOperation;->mUserId:I

    .line 39
    const/4 v0, 0x4

    .line 40
    if-ne p0, v0, :cond_1

    .line 42
    const/4 p0, -0x1

    .line 43
    :goto_0
    move v4, p0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/16 p0, 0x3f2

    .line 47
    goto :goto_0

    .line 48
    :goto_1
    const-string p0, "alias = "

    .line 50
    const-string v0, ", uid = "

    .line 52
    invoke-static {v4, p0, p2, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string v0, "USRCERT_"

    .line 58
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v2

    .line 62
    if-eqz v2, :cond_2

    .line 64
    const-string/jumbo p1, "reinstallCert - Could not perform rollback of a user certificate due to keystore2 changes - "

    .line 67
    invoke-static {p1, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    goto/16 :goto_2

    .line 72
    :cond_2
    const-string v2, "CACERT_"

    .line 74
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result v2

    .line 78
    const-string/jumbo v8, "reinstallCert - CA cert successfully reinstalled - "

    .line 81
    const-string/jumbo v9, "reinstallCert - Could not install CA cert - "

    .line 84
    const-string/jumbo v3, "reinstallCert - Could not find user certificate in this entry - "

    .line 87
    const-string/jumbo v5, "reinstallCert - CA cert(s) successfully reinserted in key entry - "

    .line 90
    const-string/jumbo v6, "reinstallCert - Could not reinsert CA cert(s) in key entry - "

    .line 93
    if-eqz v2, :cond_7

    .line 95
    invoke-virtual {p4, v4, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->contains(ILjava/lang/String;)Z

    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 101
    invoke-virtual {p4, v4, p2, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_4

    .line 107
    invoke-virtual {p4, v4, p1, p3, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(I[B[BLjava/lang/String;)Z

    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_3

    .line 113
    invoke-static {v6, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    goto/16 :goto_2

    .line 118
    :cond_3
    invoke-static {v5, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    goto/16 :goto_2

    .line 123
    :cond_4
    invoke-static {v3, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    const/4 v5, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    move-object v2, p4

    .line 130
    move-object v3, p2

    .line 131
    move-object v7, p3

    .line 132
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;I[B[B[B)Z

    .line 135
    move-result p1

    .line 136
    if-nez p1, :cond_6

    .line 138
    invoke-static {v9, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-static {v8, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    goto :goto_2

    .line 146
    :cond_7
    const-string v2, "CACERT_CE_"

    .line 148
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_9

    .line 154
    const/4 v5, 0x0

    .line 155
    const/4 v6, 0x0

    .line 156
    move-object v2, p4

    .line 157
    move-object v3, p2

    .line 158
    move-object v7, p3

    .line 159
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->put(Ljava/lang/String;I[B[B[B)Z

    .line 162
    move-result p1

    .line 163
    if-nez p1, :cond_8

    .line 165
    invoke-static {v9, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    goto :goto_2

    .line 169
    :cond_8
    invoke-static {v8, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    goto :goto_2

    .line 173
    :cond_9
    const-string v2, "CACERT_KE_"

    .line 175
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_d

    .line 181
    invoke-virtual {p4, v4, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->contains(ILjava/lang/String;)Z

    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_c

    .line 187
    invoke-virtual {p4, v4, p2, v0}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->get(ILjava/lang/String;Ljava/lang/String;)[B

    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_b

    .line 193
    invoke-virtual {p4, v4, p1, p3, p2}, Lcom/android/server/enterprise/utils/CertificateUtil$KeyChainCRUD;->updateKeyPair(I[B[BLjava/lang/String;)Z

    .line 196
    move-result p1

    .line 197
    if-nez p1, :cond_a

    .line 199
    invoke-static {v6, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    goto :goto_2

    .line 203
    :cond_a
    invoke-static {v5, p0, v1}, Lcom/android/server/DualAppManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    goto :goto_2

    .line 207
    :cond_b
    invoke-static {v3, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    goto :goto_2

    .line 211
    :cond_c
    const-string/jumbo p1, "reinstallCert - CA cert(s) cannot be reinstalled anymore as entry has been deleted - "

    .line 214
    invoke-static {p1, p0, v1}, Lcom/android/server/StorageManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_d
    :goto_2
    return-void
.end method
