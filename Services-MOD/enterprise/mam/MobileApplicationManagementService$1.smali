.class public final Lcom/android/server/enterprise/mam/MobileApplicationManagementService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/mam/MobileApplicationManagementService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService$1;->this$0:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService$1;->this$0:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v0, "registerMamReceiver: onReceive = ["

    .line 35
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, "]"

    .line 43
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p2

    .line 50
    const-string v1, "MobileApplicationManagementService"

    .line 52
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService$1;->this$0:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 57
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v3, "isSignatureMatching: "

    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v2, Landroid/content/ContentValues;

    .line 80
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 83
    const-string/jumbo v3, "pkgName"

    .line 86
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v3, p2, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 91
    const-string v4, "ENT_APP_MGMT_RT"

    .line 93
    const-string/jumbo v5, "signature"

    .line 96
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBlob(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)[B

    .line 99
    move-result-object v2

    .line 100
    invoke-static {v2}, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->deserializeObject([B)Ljava/lang/Object;

    .line 103
    move-result-object v2

    .line 104
    if-eqz v2, :cond_1

    .line 106
    check-cast v2, Ljava/util/ArrayList;

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 111
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 114
    :goto_1
    :try_start_0
    iget-object p2, p2, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 119
    move-result-object p2

    .line 120
    const/16 v3, 0x40

    .line 122
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 125
    move-result-object p2

    .line 126
    iget-object p2, p2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 128
    const/4 v3, 0x0

    .line 129
    aget-object p2, p2, v3

    .line 131
    const-string v3, "SHA-256"

    .line 133
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {p2}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {v3, p2}, Ljava/security/MessageDigest;->digest([B)[B

    .line 144
    move-result-object p2

    .line 145
    invoke-static {p2}, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->fingerprint([B)Ljava/lang/String;

    .line 148
    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_5

    .line 150
    :catch_0
    move-exception p2

    .line 151
    goto :goto_2

    .line 152
    :catch_1
    move-exception p2

    .line 153
    goto :goto_3

    .line 154
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 156
    const-string/jumbo v4, "getSignatureHash: fail to get Signature Hash due to NoSuchAlgorithmException - "

    .line 159
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    .line 165
    move-result-object p2

    .line 166
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p2

    .line 173
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    goto :goto_4

    .line 177
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 179
    const-string/jumbo v4, "getSignatureHash: fail to get Signature Hash due to NameNotFoundException - "

    .line 182
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 188
    move-result-object p2

    .line 189
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p2

    .line 196
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :goto_4
    const-string p2, ""

    .line 201
    :goto_5
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 204
    move-result-object v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v5, "isSignatureMatching: originalSignatures = "

    .line 210
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v3, ", signature = "

    .line 218
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object v4

    .line 228
    invoke-static {v1, v4}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object v4

    .line 235
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_3

    .line 241
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v6

    .line 245
    check-cast v6, Ljava/lang/String;

    .line 247
    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v7

    .line 251
    if-eqz v7, :cond_2

    .line 253
    new-instance p2, Ljava/lang/StringBuilder;

    .line 255
    const-string/jumbo v2, "isSignatureMatching: Signature match: "

    .line 258
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v2, "/"

    .line 266
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 275
    move-result-object p2

    .line 276
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p2, Ljava/lang/StringBuilder;

    .line 281
    const-string/jumbo v2, "mamReceiver checked with: packageName = ["

    .line 284
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object p2

    .line 297
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object p0, p0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService$1;->this$0:Lcom/android/server/enterprise/mam/MobileApplicationManagementService;

    .line 302
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    const-string/jumbo p2, "setLicensePermissionsForMDM = ["

    .line 308
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 322
    move-result-object p2

    .line 323
    invoke-static {v1, p2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/android/server/enterprise/mam/MobileApplicationManagementService;->mPMS:Landroid/content/pm/IPackageManager;

    .line 328
    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 331
    goto :goto_6

    .line 332
    :catch_2
    const-string p0, "Error while grating license permissions for MDM"

    .line 334
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    goto :goto_6

    .line 338
    :cond_3
    const-string/jumbo p0, "isSignatureMatching: Signature does not match"

    .line 341
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {v2}, Ljava/util/List;->toString()Ljava/lang/String;

    .line 347
    move-result-object p0

    .line 348
    new-instance p1, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    move-result-object p0

    .line 366
    invoke-static {v1, p0}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_4
    :goto_6
    return-void
.end method
