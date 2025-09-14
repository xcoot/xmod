.class public final Lcom/android/server/enterprise/certificate/CertificatePolicy;
.super Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# instance fields
.field public mBootCompleted:Z

.field public final mBootReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

.field public final mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

.field public final mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

.field public final mContext:Landroid/content/Context;

.field public final mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

.field public final mLock:Ljava/lang/Object;

.field public final mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mPackageChangeIntentReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public final mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

.field public final mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

.field public final mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public final mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

.field public final mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

.field public final mUserReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

.field public final mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public static -$$Nest$mdisplayAppSignature(Lcom/android/server/enterprise/certificate/CertificatePolicy;Ljava/lang/String;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_4

    .line 16
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 18
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 21
    move-result v0

    .line 22
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    const/16 v3, 0x2240

    .line 27
    invoke-static {v3, v0, p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    move-object v0, v1

    .line 37
    :goto_0
    if-eqz v0, :cond_4

    .line 39
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 41
    if-eqz v3, :cond_4

    .line 43
    array-length v3, v3

    .line 44
    if-lez v3, :cond_4

    .line 46
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 48
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 51
    move-result-object v3
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 52
    goto :goto_1

    .line 53
    :catch_1
    const-string v3, "CertificatePolicy"

    .line 55
    const-string v4, "Name not found"

    .line 57
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    move-object v3, v1

    .line 61
    :goto_1
    if-eqz v3, :cond_0

    .line 63
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 75
    const v5, 0x1040e72

    .line 78
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v3

    .line 86
    goto :goto_2

    .line 87
    :cond_0
    move-object v3, v1

    .line 88
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    .line 95
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 98
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 100
    array-length v6, v0

    .line 101
    move v7, v2

    .line 102
    :goto_3
    if-ge v7, v6, :cond_1

    .line 104
    aget-object v8, v0, v7

    .line 106
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 109
    move-result-object v8

    .line 110
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    add-int/lit8 v7, v7, 0x1

    .line 115
    goto :goto_3

    .line 116
    :cond_1
    invoke-virtual {p0, v1, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v0

    .line 126
    :cond_2
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v5

    .line 130
    const-string v6, "\n"

    .line 132
    if-eqz v5, :cond_3

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    move-result-object v5

    .line 138
    check-cast v5, [Ljava/lang/String;

    .line 140
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    aget-object v6, v5, v2

    .line 145
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const/4 v6, 0x1

    .line 149
    aget-object v7, v5, v6

    .line 151
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 154
    move-result v7

    .line 155
    if-nez v7, :cond_2

    .line 157
    const-string v7, " / "

    .line 159
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    aget-object v5, v5, v6

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    goto :goto_4

    .line 168
    :cond_3
    invoke-static {v3}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 185
    const-string/jumbo v7, "notification"

    .line 188
    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Landroid/app/NotificationManager;

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 197
    move-result-wide v7

    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    move-result-object v4

    .line 202
    const-string v9, ""

    .line 204
    invoke-virtual {v4, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 207
    move-result-object v4

    .line 208
    new-instance v6, Landroid/app/Notification;

    .line 210
    const v9, 0x1080078

    .line 213
    invoke-direct {v6, v9, v0, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 216
    iget v0, v6, Landroid/app/Notification;->flags:I

    .line 218
    or-int/lit8 v0, v0, 0x10

    .line 220
    iput v0, v6, Landroid/app/Notification;->flags:I

    .line 222
    new-instance v0, Landroid/content/Intent;

    .line 224
    const-string/jumbo v7, "package"

    .line 227
    invoke-static {v7, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 230
    move-result-object v1

    .line 231
    const-string v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 233
    invoke-direct {v0, v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 236
    const-string v1, "appInfoPkgName"

    .line 238
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const/high16 p1, 0x10000000

    .line 243
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 246
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 248
    const/high16 v1, 0x4000000

    .line 250
    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 253
    move-result-object p1

    .line 254
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 256
    invoke-virtual {v6, v0, v3, v4, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 259
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 261
    iget-object p0, p0, Lcom/android/server/enterprise/utils/CertificateUtil;->mRandom:Ljava/util/Random;

    .line 263
    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    .line 266
    move-result p0

    .line 267
    invoke-virtual {v5, p0, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 270
    :cond_4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/keystore/ICertificatePolicy$Stub;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 7
    new-instance v1, Ljava/lang/Object;

    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mLock:Ljava/lang/Object;

    .line 14
    new-instance v1, Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 16
    invoke-direct {v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    .line 21
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 23
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 25
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 30
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 36
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 38
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 44
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 46
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 50
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 63
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    .line 67
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 69
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v1, "package"

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 78
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 80
    const/4 v2, 0x0

    .line 81
    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$2;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 84
    iput-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageChangeIntentReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    const-string p1, "CertificatePolicy"

    .line 91
    const-string/jumbo v0, "registerPackageChangeReceiver() : Done"

    .line 94
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    :cond_0
    :goto_0
    const-string p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 104
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 107
    invoke-static {p1, v0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 110
    move-result-object p1

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 113
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 115
    const/4 v2, 0x2

    .line 116
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 119
    new-instance p1, Landroid/content/IntentFilter;

    .line 121
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 124
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 126
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 131
    const-string v1, "android.intent.action.USER_ADDED"

    .line 133
    const-string v3, "android.intent.action.DEVICE_LOCKED_CHANGED"

    .line 135
    const-string v4, "android.intent.action.BOOT_COMPLETED"

    .line 137
    invoke-static {p1, v0, v1, v3, v4}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 142
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserReceiver:Lcom/android/server/enterprise/certificate/CertificatePolicy$2;

    .line 144
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 147
    const/4 p1, 0x0

    .line 148
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 151
    move-result-object p1

    .line 152
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 154
    const/4 p1, 0x1

    .line 155
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 158
    move-result-object p1

    .line 159
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 161
    invoke-static {v2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 167
    const/4 p1, 0x3

    .line 168
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getInstance(I)Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 174
    new-instance p1, Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 176
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 178
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    .line 181
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 183
    new-instance p1, Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 185
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 187
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 189
    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    .line 192
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 194
    new-instance p1, Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 196
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 198
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 200
    invoke-direct {p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificateCache;-><init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V

    .line 203
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 205
    const-string p1, "RollbackRefreshHandler"

    .line 207
    invoke-static {p1}, Lcom/android/server/KnoxCaptureInputFilter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HandlerThread;

    .line 210
    move-result-object p1

    .line 211
    new-instance v0, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    .line 213
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 216
    move-result-object p1

    .line 217
    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/os/Looper;)V

    .line 220
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    .line 222
    new-instance p1, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 224
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 226
    invoke-direct {p1, p0, v0}, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;Landroid/content/Context;)V

    .line 229
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 231
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 233
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 236
    move-result-object p1

    .line 237
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 239
    new-instance p1, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 241
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 243
    invoke-direct {p1, v0}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;-><init>(Landroid/content/Context;)V

    .line 246
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 248
    const-string/jumbo p1, "dar"

    .line 251
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 254
    move-result-object p1

    .line 255
    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    .line 257
    iput-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mDarManagerService:Lcom/android/server/knox/dar/DarManagerService;

    .line 259
    return-void
.end method

.method public static auditLog(IILjava/util/List;)V
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6
    move-result-wide v1

    .line 7
    :try_start_0
    move-object/from16 v3, p2

    .line 9
    check-cast v3, Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object v3

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_a

    .line 21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v4

    .line 25
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 27
    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 32
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const-string/jumbo v6, "null"

    .line 36
    if-eqz v5, :cond_1

    .line 38
    :try_start_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    .line 41
    move-result-object v5

    .line 42
    invoke-interface {v5}, Ljava/security/Principal;->toString()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto/16 :goto_4

    .line 50
    :cond_1
    move-object v5, v6

    .line 51
    :goto_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 54
    move-result-object v7

    .line 55
    if-eqz v7, :cond_2

    .line 57
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    .line 60
    move-result-object v4

    .line 61
    invoke-interface {v4}, Ljava/security/Principal;->toString()Ljava/lang/String;

    .line 64
    move-result-object v6

    .line 65
    :cond_2
    const/4 v4, -0x1

    .line 66
    if-eqz v0, :cond_6

    .line 68
    const/4 v7, 0x1

    .line 69
    const/4 v8, 0x0

    .line 70
    if-eq v0, v7, :cond_5

    .line 72
    const/4 v9, 0x2

    .line 73
    if-eq v0, v9, :cond_4

    .line 75
    const/4 v9, 0x3

    .line 76
    if-eq v0, v9, :cond_7

    .line 78
    const/4 v7, 0x4

    .line 79
    if-eq v0, v7, :cond_6

    .line 81
    const/4 v7, 0x5

    .line 82
    if-eq v0, v7, :cond_3

    .line 84
    :goto_2
    move v7, v4

    .line 85
    goto :goto_3

    .line 86
    :cond_3
    const-string v8, "Admin %d has added a certificate to the untrusted DB. Subject : %s, Issuer : %s"

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const-string v8, "Admin %d has removed a certificate from the trusted DB. Subject : %s, Issuer : %s"

    .line 91
    goto :goto_2

    .line 92
    :cond_5
    const/4 v7, 0x0

    .line 93
    goto :goto_3

    .line 94
    :cond_6
    const-string v8, "Admin %d has added a certificate to the trusted DB. Subject : %s, Issuer : %s"

    .line 96
    goto :goto_2

    .line 97
    :cond_7
    :goto_3
    if-nez v8, :cond_8

    .line 99
    if-eq v7, v4, :cond_0

    .line 101
    :cond_8
    if-eqz v8, :cond_9

    .line 103
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 106
    move-result v12

    .line 107
    const-string v13, "CertificatePolicy"

    .line 109
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v4

    .line 113
    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    .line 116
    move-result-object v4

    .line 117
    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    move-result-object v14

    .line 121
    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 124
    move-result v15

    .line 125
    const/4 v10, 0x1

    .line 126
    const/4 v11, 0x1

    .line 127
    const/4 v9, 0x5

    .line 128
    invoke-static/range {v9 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 131
    goto :goto_0

    .line 132
    :cond_9
    invoke-static/range {p0 .. p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 135
    move-result v4

    .line 136
    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    move-result-object v8

    .line 140
    filled-new-array {v8, v5, v6}, [Ljava/lang/Object;

    .line 143
    move-result-object v5

    .line 144
    invoke-static {v4, v7, v5}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    goto/16 :goto_0

    .line 149
    :cond_a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    return-void

    .line 153
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v0
.end method

.method public static findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;
    .locals 9

    .line 1
    const-string v0, "CertificatePolicy"

    .line 3
    const-string/jumbo v1, "findIssuerInAndroidKeystore "

    .line 6
    const-string/jumbo v2, "findIssuerInAndroidKeystore - is KeyChainService running for user "

    .line 9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 12
    move-result-wide v3

    .line 13
    const/4 v5, 0x0

    .line 14
    :try_start_0
    new-instance v6, Landroid/os/UserHandle;

    .line 16
    invoke-direct {v6, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 19
    invoke-static {p0, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 22
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    if-eqz p0, :cond_1

    .line 25
    :try_start_1
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 28
    move-result-object v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    if-eqz v6, :cond_1

    .line 31
    const/4 v7, 0x1

    .line 32
    :try_start_2
    new-array v7, v7, [Ljava/security/cert/Certificate;

    .line 34
    const/4 v8, 0x0

    .line 35
    aput-object p1, v7, v8

    .line 37
    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    .line 40
    move-result-object p1

    .line 41
    invoke-interface {v6, p1}, Landroid/security/IKeyChainService;->findIssuer([B)[B

    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    const-string v6, "X.509"

    .line 49
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 52
    move-result-object v6

    .line 53
    new-instance v7, Ljava/io/ByteArrayInputStream;

    .line 55
    invoke-direct {v7, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 58
    invoke-virtual {v6, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 69
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 72
    return-object p1

    .line 73
    :cond_0
    move-object v5, p1

    .line 74
    goto :goto_3

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    move-object v5, p0

    .line 77
    goto/16 :goto_8

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_6

    .line 81
    :catch_1
    move-exception p1

    .line 82
    goto :goto_0

    .line 83
    :catch_2
    move-exception p1

    .line 84
    goto :goto_1

    .line 85
    :catch_3
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p1

    .line 99
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    goto :goto_3

    .line 103
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    goto :goto_3

    .line 119
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 121
    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    :cond_1
    :goto_3
    if-eqz p0, :cond_2

    .line 136
    :goto_4
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 139
    :cond_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 142
    goto :goto_7

    .line 143
    :catchall_1
    move-exception p1

    .line 144
    goto :goto_8

    .line 145
    :catch_4
    move-object p0, v5

    .line 146
    goto :goto_5

    .line 147
    :catch_5
    move-exception p1

    .line 148
    move-object p0, v5

    .line 149
    goto :goto_6

    .line 150
    :catch_6
    :goto_5
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    const-string p2, "?"

    .line 160
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object p1

    .line 167
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    if-eqz p0, :cond_2

    .line 172
    goto :goto_4

    .line 173
    :goto_6
    new-instance p2, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz p0, :cond_2

    .line 190
    goto :goto_4

    .line 191
    :goto_7
    return-object v5

    .line 192
    :goto_8
    if-eqz v5, :cond_3

    .line 194
    invoke-virtual {v5}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 197
    :cond_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw p1
.end method

.method public static getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 3
    const-class v1, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 11
    return-object v0
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    if-lez v1, :cond_1

    .line 15
    move-object v0, p0

    .line 16
    :cond_1
    :goto_0
    return-object v0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    return-object v0
.end method

.method public static sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CERTIFICATE_POLICY_CHANGED_INTERNAL"

    .line 6
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_POLICY_TYPE_CHANGED_INTERNAL"

    .line 14
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 20
    move-result-wide v1

    .line 21
    :try_start_0
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 34
    throw p0
.end method

.method public static toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    .line 3
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string/jumbo v2, "pkgName"

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string/jumbo v1, "host"

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    .line 29
    move-result v1

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "port"

    .line 37
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 40
    const-string v1, "alias"

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v1, "storageName"

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-object v0
.end method

.method public static validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;
    .locals 7

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    .line 30
    move-result v4

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    if-eqz v2, :cond_0

    .line 41
    if-eqz v3, :cond_0

    .line 43
    if-eqz v5, :cond_0

    .line 45
    new-instance p0, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 47
    move-object v1, p0

    .line 48
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    return-object p0

    .line 52
    :cond_0
    const/4 p0, 0x0

    .line 53
    return-object p0
.end method


# virtual methods
.method public final addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v2, p3

    .line 7
    iget v9, v0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v10

    .line 13
    if-eqz p2, :cond_0

    .line 15
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 21
    :cond_0
    const/4 v3, 0x0

    .line 22
    goto/16 :goto_11

    .line 24
    :cond_1
    const-string/jumbo v0, "trustedCaList"

    .line 27
    const/4 v3, 0x1

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eqz v2, :cond_5

    .line 31
    const-string/jumbo v5, "untrustedCertsList"

    .line 34
    if-eq v2, v3, :cond_4

    .line 36
    const/4 v6, 0x2

    .line 37
    if-eq v2, v6, :cond_3

    .line 39
    const/4 v6, 0x3

    .line 40
    if-eq v2, v6, :cond_2

    .line 42
    const/4 v6, 0x4

    .line 43
    if-eq v2, v6, :cond_5

    .line 45
    const/4 v0, 0x5

    .line 46
    if-eq v2, v0, :cond_4

    .line 48
    move-object v5, v4

    .line 49
    move-object v7, v5

    .line 50
    move-object v12, v7

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 54
    iget-object v6, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 56
    :goto_0
    move-object v7, v5

    .line 57
    move-object v12, v6

    .line 58
    move-object v5, v0

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 62
    iget-object v6, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 64
    :goto_1
    move-object v7, v0

    .line 65
    move-object v12, v6

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 69
    iget-object v6, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 71
    goto :goto_0

    .line 72
    :cond_5
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 74
    iget-object v6, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 76
    goto :goto_1

    .line 77
    :goto_2
    invoke-virtual {v12, v10}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 80
    move-result v13

    .line 81
    new-instance v14, Ljava/util/ArrayList;

    .line 83
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v0

    .line 90
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_6

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v6

    .line 100
    check-cast v6, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 102
    invoke-virtual {v6}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 105
    move-result-object v6

    .line 106
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 108
    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    if-eq v2, v3, :cond_9

    .line 114
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object v0

    .line 118
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result v6

    .line 122
    if-eqz v6, :cond_9

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object v6

    .line 128
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 130
    sget-object v8, Lcom/android/server/enterprise/certificate/EdmKeyStore;->TRUSTED_KEYSTORE_PATH:Ljava/lang/String;

    .line 132
    :try_start_0
    const-string v8, "2.5.29.19"

    .line 134
    invoke-virtual {v6, v8}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    .line 137
    move-result-object v8

    .line 138
    if-nez v8, :cond_8

    .line 140
    :catch_0
    const/4 v8, 0x0

    .line 141
    goto :goto_4

    .line 142
    :cond_8
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 144
    invoke-direct {v15, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 147
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 150
    move-result-object v8

    .line 151
    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;

    .line 153
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/DEROctetString;->getOctets()[B

    .line 156
    move-result-object v8

    .line 157
    new-instance v15, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;

    .line 159
    invoke-direct {v15, v8}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 162
    invoke-virtual {v15}, Lcom/android/internal/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/internal/org/bouncycastle/asn1/ASN1Primitive;

    .line 165
    move-result-object v8

    .line 166
    check-cast v8, Lcom/android/internal/org/bouncycastle/asn1/ASN1Sequence;

    .line 168
    invoke-static {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;

    .line 171
    move-result-object v8

    .line 172
    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    .line 175
    move-result v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_4
    if-nez v8, :cond_7

    .line 178
    invoke-static {v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->isSelfSigned(Ljava/security/cert/X509Certificate;)Z

    .line 181
    move-result v6

    .line 182
    if-nez v6, :cond_7

    .line 184
    goto/16 :goto_9

    .line 186
    :cond_9
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    .line 191
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 197
    move-result-object v6

    .line 198
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_c

    .line 204
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 210
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 213
    move-result-object v8

    .line 214
    invoke-static {v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    .line 217
    move-result-object v8

    .line 218
    invoke-static {v10, v8}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->addUserIdToAlias(ILjava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v8

    .line 222
    :try_start_1
    iget-object v15, v5, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStoreLock:Ljava/lang/Object;

    .line 224
    monitor-enter v15
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 225
    :try_start_2
    iget-object v11, v5, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 227
    invoke-virtual {v11, v8, v0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 230
    iget-object v0, v5, Lcom/android/server/enterprise/certificate/EdmKeyStore;->mKeyStore:Ljava/security/KeyStore;

    .line 232
    invoke-virtual {v0, v8}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    .line 235
    move-result v0

    .line 236
    if-eqz v0, :cond_b

    .line 238
    const-string v0, "_"

    .line 240
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 243
    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    const/4 v3, -0x1

    .line 245
    if-ne v11, v3, :cond_a

    .line 247
    const/4 v3, 0x1

    .line 248
    goto :goto_6

    .line 249
    :cond_a
    :try_start_3
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 252
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 253
    const/4 v3, 0x1

    .line 254
    add-int/2addr v0, v3

    .line 255
    :try_start_4
    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 258
    move-result-object v8

    .line 259
    :goto_6
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    goto :goto_7

    .line 263
    :catchall_0
    move-exception v0

    .line 264
    goto :goto_8

    .line 265
    :catchall_1
    move-exception v0

    .line 266
    const/4 v3, 0x1

    .line 267
    goto :goto_8

    .line 268
    :cond_b
    :goto_7
    monitor-exit v15

    .line 269
    goto :goto_5

    .line 270
    :goto_8
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 271
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/security/KeyStoreException; {:try_start_5 .. :try_end_5} :catch_1

    .line 272
    :catch_1
    move-exception v0

    .line 273
    const-string v8, "EdmKeyStore"

    .line 275
    new-instance v11, Ljava/lang/StringBuilder;

    .line 277
    const-string v15, "Exception with keystore "

    .line 279
    invoke-direct {v11, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 288
    move-result-object v0

    .line 289
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    goto :goto_5

    .line 293
    :cond_c
    invoke-virtual {v5}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->saveKeyStore()V

    .line 296
    :goto_9
    if-nez v4, :cond_d

    .line 298
    const/4 v5, 0x0

    .line 299
    return v5

    .line 300
    :cond_d
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 303
    move-result v0

    .line 304
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 307
    move-result v5

    .line 308
    if-ne v0, v5, :cond_e

    .line 310
    move v0, v3

    .line 311
    goto :goto_a

    .line 312
    :cond_e
    const/4 v0, 0x0

    .line 313
    :goto_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    new-instance v11, Ljava/util/ArrayList;

    .line 320
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 323
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 325
    const-string v6, "CERTIFICATE"

    .line 327
    const/4 v8, 0x0

    .line 328
    invoke-virtual {v5, v9, v8, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    move-result-object v5

    .line 332
    const-string v6, ""

    .line 334
    const-string v8, ","

    .line 336
    if-eqz v5, :cond_10

    .line 338
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 341
    move-result v15

    .line 342
    if-nez v15, :cond_f

    .line 344
    goto :goto_b

    .line 345
    :cond_f
    invoke-virtual {v5, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object v15

    .line 349
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    goto :goto_c

    .line 353
    :cond_10
    :goto_b
    move-object v5, v6

    .line 354
    :goto_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 357
    move-result-object v4

    .line 358
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 361
    move-result v15

    .line 362
    if-eqz v15, :cond_12

    .line 364
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 367
    move-result-object v15

    .line 368
    check-cast v15, Ljava/lang/String;

    .line 370
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 373
    move-result v16

    .line 374
    if-nez v16, :cond_11

    .line 376
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    move-result v16

    .line 380
    if-nez v16, :cond_11

    .line 382
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    move-object/from16 p2, v4

    .line 387
    new-instance v4, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v4

    .line 402
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    goto :goto_e

    .line 406
    :cond_11
    move-object/from16 p2, v4

    .line 408
    :goto_e
    move-object/from16 v4, p2

    .line 410
    goto :goto_d

    .line 411
    :cond_12
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    move-result-object v4

    .line 415
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 418
    move-result v4

    .line 419
    if-lez v4, :cond_13

    .line 421
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 424
    move-result v4

    .line 425
    const/4 v5, 0x0

    .line 426
    invoke-virtual {v3, v5, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 429
    move-result-object v3

    .line 430
    move-object v8, v3

    .line 431
    goto :goto_f

    .line 432
    :cond_13
    move-object v8, v6

    .line 433
    :goto_f
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 435
    const/4 v5, 0x0

    .line 436
    const-string v6, "CERTIFICATE"

    .line 438
    move v4, v9

    .line 439
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 442
    move-result v3

    .line 443
    if-eqz v3, :cond_14

    .line 445
    goto :goto_10

    .line 446
    :cond_14
    new-instance v11, Ljava/util/ArrayList;

    .line 448
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 451
    :goto_10
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 454
    move-result v3

    .line 455
    if-nez v3, :cond_15

    .line 457
    const/4 v3, 0x0

    .line 458
    return v3

    .line 459
    :cond_15
    invoke-virtual {v12, v10, v9, v11}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    .line 462
    if-eqz v0, :cond_16

    .line 464
    invoke-static {v9, v2, v14}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(IILjava/util/List;)V

    .line 467
    :cond_16
    invoke-virtual {v1, v2, v13, v9}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    .line 470
    return v0

    .line 471
    :goto_11
    return v3
.end method

.method public final addPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_3

    .line 14
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    move-result v2

    .line 18
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const-string v3, "*"

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 39
    move-result-object v1

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    move-result v4

    .line 44
    if-eqz v4, :cond_1

    .line 46
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    move-result-object v4

    .line 50
    check-cast v4, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v4}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 66
    invoke-virtual {v4}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 70
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_0

    .line 76
    const-string p0, "CertificatePolicy"

    .line 78
    const-string p1, "Operation not allowed, another rule for given package name has host set to wildcard"

    .line 80
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    return v0

    .line 84
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 95
    move-result-object v5

    .line 96
    const/4 v6, 0x1

    .line 97
    move-object v1, p0

    .line 98
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 104
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object p1

    .line 112
    const-string v1, "adminUid"

    .line 114
    invoke-virtual {p2, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 119
    const-string p1, "PermAppPrivateKey"

    .line 121
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 124
    move-result-wide p0

    .line 125
    const-wide/16 v1, 0x0

    .line 127
    cmp-long p0, p0, v1

    .line 129
    if-lez p0, :cond_3

    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_0

    .line 133
    :cond_2
    move v0, v1

    .line 134
    :cond_3
    :goto_0
    return v0
.end method

.method public final addTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final addUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->addCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final allowUserRemoveCertificates(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 11
    const-string v1, "CERTIFICATE"

    .line 13
    const-string v5, "allowUserRemoveCertificate"

    .line 15
    const/4 v4, 0x0

    .line 16
    move v3, p2

    .line 17
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_1

    .line 23
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 25
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 28
    move-result p1

    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 31
    iget-boolean p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    .line 33
    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p2, 0x0

    .line 38
    :cond_1
    :goto_0
    return p2
.end method

.method public final clearCertificates(II)Z
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    .line 7
    invoke-direct {v1, p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 10
    iget-object p2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 12
    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 15
    move-result p2

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez p2, :cond_0

    .line 19
    return v2

    .line 20
    :cond_0
    iget-object v7, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 22
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 24
    const/4 v9, 0x0

    .line 25
    const-string v3, "CERTIFICATE"

    .line 27
    invoke-virtual {p2, p1, v9, v3, v7}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p2

    .line 31
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v5, 0x0

    .line 35
    const-string v6, "CERTIFICATE"

    .line 37
    move v4, p1

    .line 38
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-static {p2}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    .line 47
    move-result-object p2

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 p2, 0x0

    .line 50
    :goto_0
    if-eqz p2, :cond_2

    .line 52
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 55
    move-result v3

    .line 56
    if-lez v3, :cond_2

    .line 58
    new-instance v3, Ljava/util/ArrayList;

    .line 60
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v4, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 65
    invoke-virtual {v4, v0, p2}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Ljava/util/HashMap;

    .line 71
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-virtual {p0, v1, p1, p2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    .line 81
    return v2

    .line 82
    :cond_2
    return v9
.end method

.method public final clearPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 13

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    new-instance v0, Landroid/content/ContentValues;

    .line 9
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, "adminUid"

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    const-string/jumbo v1, "pkgName"

    .line 24
    const-string v2, "alias"

    .line 26
    const-string/jumbo v3, "storageName"

    .line 29
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    .line 32
    move-result-object v4

    .line 33
    iget-object v5, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 35
    const-string v6, "PermAppPrivateKey"

    .line 37
    invoke-virtual {v5, v6, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Ljava/util/ArrayList;

    .line 43
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 46
    move-result-object v4

    .line 47
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    move-result v5

    .line 51
    if-eqz v5, :cond_0

    .line 53
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    move-result-object v5

    .line 57
    check-cast v5, Landroid/content/ContentValues;

    .line 59
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v9

    .line 63
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 66
    move-result v8

    .line 67
    invoke-virtual {v5, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v11

    .line 75
    const/4 v12, 0x0

    .line 76
    move-object v7, p0

    .line 77
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 83
    invoke-virtual {p0, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 86
    move-result p0

    .line 87
    if-lez p0, :cond_1

    .line 89
    const/4 p0, 0x1

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    const/4 p0, 0x0

    .line 92
    :goto_1
    return p0
.end method

.method public final clearTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final clearUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    .line 11
    move-result p0

    .line 12
    return p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string p3, "android.permission.DUMP"

    .line 5
    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    const-string p0, "Permission Denial: can\'t dump CertificatePolicy"

    .line 13
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "[Trusted Cache]"

    .line 23
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 40
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 42
    new-instance p3, Ljava/lang/StringBuilder;

    .line 44
    const-string v0, "[Untrusted Cache]"

    .line 46
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 63
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "[Trusted Keystore]"

    .line 69
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    .line 90
    const-string v0, "[User Keystore]"

    .line 92
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 111
    new-instance p3, Ljava/lang/StringBuilder;

    .line 113
    const-string v0, "[Native Keystore]"

    .line 115
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 134
    new-instance p3, Ljava/lang/StringBuilder;

    .line 136
    const-string v0, "[Untrusted Keystore]"

    .line 138
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    move-result-object p3

    .line 152
    invoke-virtual {p1, p2, p3}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 157
    const-string v4, "alias"

    .line 159
    const-string/jumbo v5, "storageName"

    .line 162
    const-string v0, "adminUid"

    .line 164
    const-string/jumbo v1, "pkgName"

    .line 167
    const-string/jumbo v2, "host"

    .line 170
    const-string/jumbo v3, "port"

    .line 173
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 176
    move-result-object p3

    .line 177
    const-string v0, "PermAppPrivateKey"

    .line 179
    const/4 v1, 0x0

    .line 180
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 185
    const-string/jumbo v6, "validateCertificateAtInstall"

    .line 188
    const-string v7, "allowUserRemoveCertificate"

    .line 190
    const-string/jumbo v2, "trustedCaList"

    .line 193
    const-string/jumbo v3, "untrustedCertsList"

    .line 196
    const-string/jumbo v4, "signatureIdentityInformationEnabled"

    .line 199
    const-string/jumbo v5, "notificateSignatureFailureToUser"

    .line 202
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 205
    move-result-object p3

    .line 206
    const-string v0, "CERTIFICATE"

    .line 208
    invoke-virtual {p1, p2, v0, p3, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 211
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEnterpriseDumpHelper:Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;

    .line 213
    const-string/jumbo p1, "nativeRemovedList"

    .line 216
    const-string/jumbo p3, "nativeRemovedList_wifi"

    .line 219
    const-string/jumbo v0, "systemDisabledList"

    .line 222
    const-string/jumbo v2, "systemPrevDisabledList"

    .line 225
    const-string/jumbo v3, "userRemovedList"

    .line 228
    filled-new-array {v0, v2, v3, p1, p3}, [Ljava/lang/String;

    .line 231
    move-result-object p1

    .line 232
    const-string/jumbo p3, "generic"

    .line 235
    invoke-virtual {p0, p2, p3, p1, v1}, Lcom/android/server/enterprise/utils/EnterpriseDumpHelper;->dumpTable(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public final enableCertificateFailureNotification(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "CERTIFICATE"

    .line 12
    const-string/jumbo v5, "notificateSignatureFailureToUser"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final enableCertificateValidationAtInstall(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "CERTIFICATE"

    .line 12
    const-string/jumbo v5, "validateCertificateAtInstall"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 24
    const-string p2, "CERTIFICATE_VALIDATION"

    .line 26
    invoke-static {p0, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    :cond_0
    return p1
.end method

.method public final enableSignatureIdentityInformation(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 7
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    const/4 v4, 0x0

    .line 10
    const-string v1, "CERTIFICATE"

    .line 12
    const-string/jumbo v5, "signatureIdentityInformationEnabled"

    .line 15
    move v3, p2

    .line 16
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putBoolean(Ljava/lang/String;IZILjava/lang/String;)Z

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public final enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 20
    filled-new-array {v1}, [Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public final executeRollbackRefresh(II)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Message;

    .line 3
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 6
    iput p1, v0, Landroid/os/Message;->what:I

    .line 8
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 10
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefreshHandler:Lcom/android/server/enterprise/certificate/CertificatePolicy$RollbackRefreshHandler;

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    return-void
.end method

.method public final getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 16
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 30
    return-object v0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {v2, v1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->findIssuerInAndroidKeystore(Landroid/content/Context;Ljava/security/cert/X509Certificate;I)Ljava/security/cert/X509Certificate;

    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_1

    .line 39
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string p0, "CertificatePolicy"

    .line 47
    const-string/jumbo p1, "getCertificateChain error. Could not find certificate."

    .line 50
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p0, Ljava/security/cert/CertificateException;

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 57
    const-string p2, "Could not build certificate chain; certificate not found: "

    .line 59
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0
.end method

.method public final getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "adminUid"

    .line 8
    filled-new-array {v1, p2}, [Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 14
    const/4 v4, 0x0

    .line 15
    const-string v5, "CERTIFICATE"

    .line 17
    invoke-virtual {v3, v4, p1, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 20
    move-result-object v2

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 26
    check-cast v2, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 31
    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_2

    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Landroid/content/ContentValues;

    .line 44
    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v5

    .line 48
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v6

    .line 52
    if-nez v6, :cond_0

    .line 54
    new-instance v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;

    .line 56
    invoke-direct {v6}, Lcom/samsung/android/knox/keystore/CertificateControlInfo;-><init>()V

    .line 59
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 62
    move-result-object v4

    .line 63
    if-eqz v4, :cond_1

    .line 65
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 68
    move-result v4

    .line 69
    iget-object v7, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 71
    invoke-virtual {v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 74
    move-result-object v4

    .line 75
    iput-object v4, v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->adminPackageName:Ljava/lang/String;

    .line 77
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-static {v5}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    .line 83
    move-result-object v4

    .line 84
    invoke-virtual {p3, p1, v4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->getCertificates(ILjava/util/List;)Ljava/util/Map;

    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/util/HashMap;

    .line 90
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iput-object v3, v6, Lcom/samsung/android/knox/keystore/CertificateControlInfo;->entries:Ljava/util/List;

    .line 99
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    return-object v0
.end method

.method public final getCertificatesList(II)Ljava/util/List;
    .locals 4

    .line 1
    const-string/jumbo v0, "trustedCaList"

    .line 4
    if-eqz p2, :cond_3

    .line 6
    const/4 v1, 0x1

    .line 7
    const-string/jumbo v2, "untrustedCertsList"

    .line 10
    if-eq p2, v1, :cond_2

    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq p2, v1, :cond_1

    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq p2, v1, :cond_0

    .line 18
    const/4 v1, 0x4

    .line 19
    if-eq p2, v1, :cond_3

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p2, v0, :cond_2

    .line 24
    const/4 v0, 0x0

    .line 25
    move-object p2, v0

    .line 26
    move-object v2, p2

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 30
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 32
    :goto_0
    move-object v3, v0

    .line 33
    move-object v0, p2

    .line 34
    move-object p2, v3

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 38
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 40
    :goto_1
    move-object v2, v0

    .line 41
    move-object v0, v1

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 45
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 52
    goto :goto_1

    .line 53
    :goto_2
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_4

    .line 59
    new-instance p0, Ljava/util/ArrayList;

    .line 61
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    return-object p0

    .line 65
    :cond_4
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    .line 68
    move-result-object v0

    .line 69
    if-eqz p1, :cond_5

    .line 71
    const/4 p1, 0x0

    .line 72
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesFromDb(ILjava/lang/String;Lcom/android/server/enterprise/certificate/EdmKeyStore;)Ljava/util/List;

    .line 75
    move-result-object p0

    .line 76
    move-object p1, v0

    .line 77
    check-cast p1, Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_5
    return-object v0
.end method

.method public final getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getIdentitiesFromSignatures(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 6

    .line 1
    const-string p0, "CertificatePolicy"

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    if-ge v0, v1, :cond_3

    .line 15
    new-instance v1, Landroid/content/pm/Signature;

    .line 17
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 32
    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 35
    :try_start_0
    const-string v1, "X509"

    .line 37
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 40
    move-result-object v1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 47
    new-instance v2, Landroid/net/http/SslCertificate;

    .line 49
    invoke-direct {v2, v1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 52
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 79
    move-result v5

    .line 80
    if-nez v5, :cond_1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_0

    .line 88
    move-object v4, v1

    .line 89
    :cond_0
    move-object v1, v3

    .line 90
    goto :goto_1

    .line 91
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 94
    move-result v3

    .line 95
    const-string v4, ""

    .line 97
    if-nez v3, :cond_2

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    invoke-virtual {v2}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    :goto_1
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v0, v0, 0x1

    .line 117
    goto :goto_0

    .line 118
    :catch_0
    const-string p2, "X509Certificate error"

    .line 120
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-object p1

    .line 124
    :catch_1
    const-string p2, "CertificateFactory error"

    .line 126
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    return-object p1
.end method

.method public final getListPermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public final getPackagesForPid(I)Ljava/util/List;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 3
    const-string v0, "activity"

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Landroid/app/ActivityManager;

    .line 11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 14
    move-result-wide v0

    .line 15
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 18
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    move-result-object p0

    .line 29
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 41
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 43
    if-ne v2, p1, :cond_0

    .line 45
    iget-object p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 47
    if-eqz p0, :cond_1

    .line 49
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    move-result-object v0

    .line 53
    :cond_1
    return-object v0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    throw p0
.end method

.method public final getPolicyValueBackwardCompatibleAsUser(ILjava/lang/String;Z)Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 23
    move-result v0

    .line 24
    const/4 v3, -0x1

    .line 25
    if-eq v0, v3, :cond_0

    .line 27
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    const-string v4, "CERTIFICATE"

    .line 31
    invoke-virtual {v3, v0, v2, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBoolean(IILjava/lang/String;Ljava/lang/String;)Z

    .line 34
    move-result v3
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    const-string/jumbo v5, "getPolicyValueBackwardCompatibleAsUser: "

    .line 42
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    const-string v4, "CertificatePolicy"

    .line 54
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    move v3, p3

    .line 58
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 61
    move-result v0

    .line 62
    if-eq p1, v0, :cond_1

    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(ILjava/lang/String;Z)Z

    .line 67
    move-result p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move p0, v3

    .line 70
    :goto_1
    if-ne p3, v1, :cond_3

    .line 72
    if-eqz v3, :cond_2

    .line 74
    if-eqz p0, :cond_2

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    move v1, v2

    .line 78
    goto :goto_2

    .line 79
    :cond_3
    if-nez v3, :cond_7

    .line 81
    if-eqz p0, :cond_2

    .line 83
    goto :goto_2

    .line 84
    :cond_4
    if-lez p1, :cond_6

    .line 86
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 98
    move-result v0

    .line 99
    if-nez v0, :cond_6

    .line 101
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(ILjava/lang/String;Z)Z

    .line 104
    move-result p1

    .line 105
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(ILjava/lang/String;Z)Z

    .line 108
    move-result p0

    .line 109
    if-ne p3, v1, :cond_5

    .line 111
    if-eqz p1, :cond_2

    .line 113
    if-eqz p0, :cond_2

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    if-nez p1, :cond_7

    .line 118
    if-eqz p0, :cond_2

    .line 120
    goto :goto_2

    .line 121
    :cond_6
    invoke-virtual {p0, v2, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getStrictestValueAsUser(ILjava/lang/String;Z)Z

    .line 124
    move-result v1

    .line 125
    :cond_7
    :goto_2
    return v1
.end method

.method public final getStrictestValueAsUser(ILjava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string v0, "CERTIFICATE"

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    move-result p1

    .line 29
    if-eq p1, p3, :cond_0

    .line 31
    move p3, p1

    .line 32
    :cond_1
    return p3
.end method

.method public final getTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final getUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x5

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificatesList(II)Ljava/util/List;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public final initCache(I)V
    .locals 8

    .line 1
    const-string/jumbo v0, "trustedCaList"

    .line 4
    if-eqz p1, :cond_3

    .line 6
    const-string/jumbo v1, "untrustedCertsList"

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq p1, v2, :cond_2

    .line 12
    const/4 v2, 0x2

    .line 13
    if-eq p1, v2, :cond_1

    .line 15
    const/4 v2, 0x3

    .line 16
    if-eq p1, v2, :cond_0

    .line 18
    const/4 v2, 0x4

    .line 19
    if-eq p1, v2, :cond_3

    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_2

    .line 24
    const/4 v0, 0x0

    .line 25
    move-object v1, v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 32
    :goto_0
    move-object v1, v0

    .line 33
    move-object v0, p1

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 37
    goto :goto_1

    .line 38
    :cond_3
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 40
    goto :goto_0

    .line 41
    :goto_1
    monitor-enter v0

    .line 42
    :try_start_0
    iget-object p1, v0, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 44
    check-cast p1, Ljava/util/HashMap;

    .line 46
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    .line 50
    const-string p1, "adminUid"

    .line 52
    filled-new-array {p1, v1}, [Ljava/lang/String;

    .line 55
    move-result-object p1

    .line 56
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 58
    invoke-virtual {v2}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 67
    move-result-object v2

    .line 68
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_7

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 78
    check-cast v3, Ljava/lang/Integer;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 83
    move-result v3

    .line 84
    iget-object v4, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 86
    const-string v5, "CERTIFICATE"

    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {v4, v6, v3, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValuesListAsUser(IILjava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Ljava/util/ArrayList;

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 98
    move-result-object v4

    .line 99
    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_4

    .line 105
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Landroid/content/ContentValues;

    .line 111
    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 115
    if-eqz v6, :cond_5

    .line 117
    const-string v7, "adminUid"

    .line 119
    invoke-virtual {v5, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 122
    move-result-object v5

    .line 123
    if-nez v5, :cond_6

    .line 125
    goto :goto_2

    .line 126
    :cond_6
    invoke-static {v6}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    .line 129
    move-result-object v6

    .line 130
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 133
    move-result v5

    .line 134
    invoke-virtual {v0, v3, v5, v6}, Lcom/android/server/enterprise/certificate/CertificateCache;->addToCache(IILjava/util/List;)V

    .line 137
    goto :goto_2

    .line 138
    :cond_7
    return-void

    .line 139
    :catchall_0
    move-exception p0

    .line 140
    monitor-exit v0

    .line 141
    throw p0
.end method

.method public final isCaCertificateDisabledAsUser(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    const-string/jumbo v0, "systemDisabledList"

    .line 4
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZI)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z

    move-result p0

    return p0
.end method

.method public final isCaCertificateTrustedAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;ZZI)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    invoke-virtual {v0, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 3
    invoke-virtual {v0, p4}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCertStore:Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-virtual {v0, p1, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 6
    :cond_1
    const-string/jumbo v1, "system:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/4 p3, 0x3

    .line 7
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p3, 0x2

    .line 8
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z

    move-result p0

    :goto_2
    if-eqz p2, :cond_4

    if-nez p0, :cond_4

    const p1, 0x104029f

    .line 9
    invoke-static {p1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    :cond_4
    return p0
.end method

.method public final isCertificateFailureNotificationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 7
    move-result p1

    .line 8
    const-string/jumbo v0, "notificateSignatureFailureToUser"

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(ILjava/lang/String;Z)Z

    .line 15
    move-result p0

    .line 16
    return p0
.end method

.method public final isCertificateTrustedUntrustedEnabledAsUser(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 14
    move-result p0

    .line 15
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x0

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
.end method

.method public final isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isCertificateValidationAtInstallEnabledAsUser(I)Z
    .locals 2

    .line 1
    const-string/jumbo v0, "validateCertificateAtInstall"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(ILjava/lang/String;Z)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isOcspCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v1, "com.android.certinstaller"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 28
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_0
    const-string p0, "application_policy"

    .line 41
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    if-eqz p0, :cond_3

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p0

    .line 55
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 67
    const-string v1, "OcspCheck"

    .line 69
    invoke-static {p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 75
    const-string v0, "*"

    .line 77
    invoke-static {p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    :cond_2
    const/4 p0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p0, 0x0

    .line 86
    :goto_0
    return p0
.end method

.method public final isPrivateKeyApplicationPermitted(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result v5

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p2

    .line 7
    move-object v2, p3

    .line 8
    move v3, p4

    .line 9
    move-object v4, p5

    .line 10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public final isPrivateKeyApplicationPermittedAsUser(Ljava/lang/String;Ljava/lang/String;ILjava/util/List;I)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 8
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->retrieveAppPermissionsFromDb(I)Ljava/util/List;

    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object v6

    .line 18
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_6

    .line 24
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 30
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_5

    .line 40
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "*"

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    move-object v0, p0

    .line 61
    move-object v1, v2

    .line 62
    move-object v2, v3

    .line 63
    move-object v3, p1

    .line 64
    move v4, p5

    .line 65
    move-object v5, p4

    .line 66
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 75
    if-eqz p2, :cond_5

    .line 77
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 81
    const-string v3, "."

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 86
    move-result v4

    .line 87
    if-nez v4, :cond_2

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getHost()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_3

    .line 103
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 105
    invoke-virtual {p2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 112
    move-result-object v2

    .line 113
    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 119
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    .line 122
    move-result v2

    .line 123
    const/4 v3, -0x1

    .line 124
    if-eq v2, v3, :cond_4

    .line 126
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPort()I

    .line 129
    move-result v2

    .line 130
    if-ne p3, v2, :cond_5

    .line 132
    :cond_4
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 139
    move-result-object v3

    .line 140
    move-object v0, p0

    .line 141
    move-object v1, v2

    .line 142
    move-object v2, v3

    .line 143
    move-object v3, p1

    .line 144
    move v4, p5

    .line 145
    move-object v5, p4

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    :cond_5
    :goto_0
    if-eqz v0, :cond_0

    .line 152
    :cond_6
    return-object v0
.end method

.method public final isRevocationCheckEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPackagesForPid(I)Ljava/util/List;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const-string/jumbo v1, "com.android.certinstaller"

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 28
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 37
    move-result p0

    .line 38
    return p0

    .line 39
    :cond_0
    const-string p0, "application_policy"

    .line 41
    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p0

    .line 45
    check-cast p0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 47
    if-eqz v0, :cond_3

    .line 49
    if-eqz p0, :cond_3

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p0

    .line 55
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_3

    .line 61
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/String;

    .line 67
    const-string v1, "RevocationCheck"

    .line 69
    invoke-static {p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_2

    .line 75
    const-string v0, "*"

    .line 77
    invoke-static {p1, v0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationControlState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_1

    .line 83
    :cond_2
    const/4 p0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_3
    const/4 p0, 0x0

    .line 86
    :goto_0
    return p0
.end method

.method public final isSignatureIdentityInformationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/samsung/android/knox/ContextInfo;

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 8
    move-result p2

    .line 9
    invoke-direct {p1, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 12
    :cond_0
    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 14
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 23
    move-result-object p2

    .line 24
    if-eqz p2, :cond_1

    .line 26
    const-string/jumbo v0, "com.android.packageinstaller"

    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 39
    move-result-object p1

    .line 40
    :goto_0
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 44
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    move-result p1

    .line 48
    const-string p2, "CERTIFICATE"

    .line 50
    const-string/jumbo v0, "signatureIdentityInformationEnabled"

    .line 53
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 60
    move-result-object p0

    .line 61
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    move-result p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Ljava/lang/Boolean;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_2

    .line 79
    const/4 p0, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    const/4 p0, 0x0

    .line 82
    :goto_1
    return p0
.end method

.method public final isUserRemoveCertificatesAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 2

    .line 1
    const-string v0, "allowUserRemoveCertificate"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(ILjava/lang/String;Z)Z

    .line 7
    move-result p0

    .line 8
    return p0
.end method

.method public final notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 9
    return-void
.end method

.method public final notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    move/from16 v3, p4

    .line 9
    new-instance v4, Lcom/samsung/android/knox/ContextInfo;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 14
    move-result v5

    .line 15
    invoke-direct {v4, v5}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 18
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 20
    if-nez v5, :cond_0

    .line 22
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {v5}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 27
    move-result-object v5

    .line 28
    iput-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 30
    :cond_0
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 32
    new-instance v6, Ljava/util/ArrayList;

    .line 34
    const-string/jumbo v7, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 37
    filled-new-array {v7}, [Ljava/lang/String;

    .line 40
    move-result-object v7

    .line 41
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    move-result-object v7

    .line 45
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    invoke-virtual {v5, v4, v6}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforcePermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 51
    const-string/jumbo v4, "obtainMsgFromModule"

    .line 54
    const-string v5, "CertificatePolicy"

    .line 56
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v4, 0x2

    .line 60
    new-array v6, v4, [Ljava/lang/String;

    .line 62
    iget-object v7, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 64
    const v8, 0x1040290

    .line 67
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    const/4 v8, 0x1

    .line 72
    aput-object v7, v6, v8

    .line 74
    const-string/jumbo v7, "wifi_module"

    .line 77
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v7

    .line 81
    const-string v9, " "

    .line 83
    const/4 v10, 0x0

    .line 84
    const-string/jumbo v11, "error converting reason to integer "

    .line 87
    if-eqz v7, :cond_1

    .line 89
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 91
    const v4, 0x1041098

    .line 94
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 98
    aput-object v0, v6, v10

    .line 100
    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    const-string/jumbo v4, "eventReason "

    .line 109
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    array-length v2, v0

    .line 127
    if-le v2, v8, :cond_b

    .line 129
    aget-object v0, v0, v8

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v4, "reasonStr "

    .line 136
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v2

    .line 146
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const-string/jumbo v2, "reason="

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_b

    .line 158
    const/4 v2, 0x7

    .line 159
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 166
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    move v4, v0

    .line 168
    goto/16 :goto_7

    .line 170
    :catch_0
    move-exception v0

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    goto/16 :goto_6

    .line 188
    :cond_1
    const-string/jumbo v7, "browser_module"

    .line 191
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v7

    .line 195
    const/16 v13, 0xd

    .line 197
    const/4 v14, 0x4

    .line 198
    const/4 v15, 0x3

    .line 199
    if-eqz v7, :cond_2

    .line 201
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 203
    const v7, 0x104025f

    .line 206
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v0

    .line 210
    aput-object v0, v6, v10

    .line 212
    if-eqz v2, :cond_b

    .line 214
    :try_start_1
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 217
    move-result v12
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    goto :goto_1

    .line 219
    :catch_1
    move-exception v0

    .line 220
    move-object v2, v0

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 233
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v12, -0x1

    .line 237
    :goto_1
    const-string/jumbo v0, "errorCode "

    .line 240
    invoke-static {v12, v0, v5}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 243
    if-eq v12, v8, :cond_a

    .line 245
    if-eq v12, v4, :cond_c

    .line 247
    if-eq v12, v15, :cond_9

    .line 249
    if-eq v12, v14, :cond_8

    .line 251
    const/4 v4, 0x5

    .line 252
    if-eq v12, v4, :cond_c

    .line 254
    if-eq v12, v13, :cond_7

    .line 256
    goto/16 :goto_5

    .line 258
    :cond_2
    const-string/jumbo v7, "package_manager_module"

    .line 261
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    move-result v7

    .line 265
    const/16 v12, 0xa

    .line 267
    if-eqz v7, :cond_4

    .line 269
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 271
    const v4, 0x1040954

    .line 274
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 278
    aput-object v0, v6, v10

    .line 280
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_b

    .line 286
    :try_start_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 289
    move-result v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 290
    goto :goto_2

    .line 291
    :catch_2
    move-exception v0

    .line 292
    move-object v2, v0

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 305
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v0, -0x1

    .line 309
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 312
    goto/16 :goto_5

    .line 314
    :cond_3
    :pswitch_0
    move v4, v12

    .line 315
    goto/16 :goto_7

    .line 317
    :pswitch_1
    const/16 v0, 0xc

    .line 319
    goto/16 :goto_0

    .line 321
    :pswitch_2
    const/16 v4, 0xb

    .line 323
    goto/16 :goto_7

    .line 325
    :cond_4
    const-string/jumbo v7, "installer_module"

    .line 328
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v7

    .line 332
    if-eqz v7, :cond_6

    .line 334
    iget-object v0, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 336
    const v7, 0x10406a3

    .line 339
    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 342
    move-result-object v0

    .line 343
    aput-object v0, v6, v10

    .line 345
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 348
    move-result v0

    .line 349
    if-nez v0, :cond_b

    .line 351
    :try_start_3
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 354
    move-result v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    .line 355
    goto :goto_3

    .line 356
    :catch_3
    move-exception v0

    .line 357
    move-object v2, v0

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    .line 360
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v0, -0x1

    .line 374
    :goto_3
    if-eq v0, v8, :cond_a

    .line 376
    if-eq v0, v4, :cond_c

    .line 378
    if-eq v0, v15, :cond_9

    .line 380
    if-eq v0, v14, :cond_8

    .line 382
    const/16 v4, 0x8

    .line 384
    if-eq v0, v4, :cond_c

    .line 386
    if-eq v0, v13, :cond_7

    .line 388
    if-eq v0, v12, :cond_3

    .line 390
    const/16 v2, 0xb

    .line 392
    if-eq v0, v2, :cond_5

    .line 394
    goto :goto_5

    .line 395
    :cond_5
    move v4, v2

    .line 396
    goto :goto_7

    .line 397
    :cond_6
    const-string v7, "Chrome_module"

    .line 399
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    move-result v0

    .line 403
    if-eqz v0, :cond_b

    .line 405
    const-string v0, "CHROME"

    .line 407
    aput-object v0, v6, v10

    .line 409
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 412
    move-result v0

    .line 413
    if-nez v0, :cond_b

    .line 415
    :try_start_4
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 418
    move-result v12
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    .line 419
    goto :goto_4

    .line 420
    :catch_4
    move-exception v0

    .line 421
    move-object v2, v0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    move-result-object v0

    .line 434
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v12, -0x1

    .line 438
    :goto_4
    if-eq v12, v8, :cond_a

    .line 440
    if-eq v12, v4, :cond_c

    .line 442
    if-eq v12, v15, :cond_9

    .line 444
    if-eq v12, v14, :cond_8

    .line 446
    if-eq v12, v13, :cond_7

    .line 448
    :goto_5
    move v4, v10

    .line 449
    goto :goto_7

    .line 450
    :cond_7
    move v4, v13

    .line 451
    goto :goto_7

    .line 452
    :cond_8
    move v4, v14

    .line 453
    goto :goto_7

    .line 454
    :cond_9
    move v4, v15

    .line 455
    goto :goto_7

    .line 456
    :cond_a
    move v4, v8

    .line 457
    goto :goto_7

    .line 458
    :cond_b
    :goto_6
    const/4 v4, -0x1

    .line 459
    :cond_c
    :goto_7
    const-string/jumbo v0, "reason "

    .line 462
    invoke-static {v4, v0, v5}, Lcom/android/server/NetworkScoreService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 465
    packed-switch v4, :pswitch_data_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    .line 470
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 473
    aget-object v2, v6, v8

    .line 475
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 480
    const v4, 0x104029d

    .line 483
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 493
    move-result-object v0

    .line 494
    aput-object v0, v6, v8

    .line 496
    goto/16 :goto_8

    .line 498
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 500
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    aget-object v2, v6, v8

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 510
    const v4, 0x104029c

    .line 513
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 516
    move-result-object v2

    .line 517
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    move-result-object v0

    .line 524
    aput-object v0, v6, v8

    .line 526
    goto/16 :goto_8

    .line 528
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 533
    aget-object v2, v6, v8

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 540
    const v4, 0x1040296

    .line 543
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 546
    move-result-object v2

    .line 547
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    move-result-object v0

    .line 554
    aput-object v0, v6, v8

    .line 556
    goto/16 :goto_8

    .line 558
    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 560
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    aget-object v2, v6, v8

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 570
    const v4, 0x1040295

    .line 573
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 576
    move-result-object v2

    .line 577
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    move-result-object v0

    .line 584
    aput-object v0, v6, v8

    .line 586
    goto/16 :goto_8

    .line 588
    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 590
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 593
    aget-object v2, v6, v8

    .line 595
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 600
    const v4, 0x1040297

    .line 603
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 606
    move-result-object v2

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    move-result-object v0

    .line 614
    aput-object v0, v6, v8

    .line 616
    goto/16 :goto_8

    .line 618
    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 620
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 623
    aget-object v2, v6, v8

    .line 625
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 630
    const v4, 0x1040291

    .line 633
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 643
    move-result-object v0

    .line 644
    aput-object v0, v6, v8

    .line 646
    goto/16 :goto_8

    .line 648
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 650
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    aget-object v2, v6, v8

    .line 655
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 660
    const v4, 0x104029a

    .line 663
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 666
    move-result-object v2

    .line 667
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 673
    move-result-object v0

    .line 674
    aput-object v0, v6, v8

    .line 676
    goto/16 :goto_8

    .line 678
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 680
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    aget-object v2, v6, v8

    .line 685
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 690
    const v4, 0x1040293

    .line 693
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 696
    move-result-object v2

    .line 697
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    move-result-object v0

    .line 704
    aput-object v0, v6, v8

    .line 706
    goto/16 :goto_8

    .line 708
    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 710
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 713
    aget-object v2, v6, v8

    .line 715
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 720
    const v4, 0x1040292

    .line 723
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 726
    move-result-object v2

    .line 727
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    move-result-object v0

    .line 734
    aput-object v0, v6, v8

    .line 736
    goto/16 :goto_8

    .line 738
    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    .line 740
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    aget-object v2, v6, v8

    .line 745
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 750
    const v4, 0x104029b

    .line 753
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 756
    move-result-object v2

    .line 757
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 763
    move-result-object v0

    .line 764
    aput-object v0, v6, v8

    .line 766
    goto :goto_8

    .line 767
    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 769
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 772
    aget-object v2, v6, v8

    .line 774
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 779
    const v4, 0x1040294

    .line 782
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 785
    move-result-object v2

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 792
    move-result-object v0

    .line 793
    aput-object v0, v6, v8

    .line 795
    goto :goto_8

    .line 796
    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 798
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 801
    aget-object v2, v6, v8

    .line 803
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 808
    const v4, 0x1040298

    .line 811
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 814
    move-result-object v2

    .line 815
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 821
    move-result-object v0

    .line 822
    aput-object v0, v6, v8

    .line 824
    goto :goto_8

    .line 825
    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 827
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    aget-object v2, v6, v8

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 837
    const v4, 0x1040299

    .line 840
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 843
    move-result-object v2

    .line 844
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    move-result-object v0

    .line 851
    aput-object v0, v6, v8

    .line 853
    goto :goto_8

    .line 854
    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    .line 856
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 859
    aget-object v2, v6, v8

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    iget-object v2, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 866
    const v4, 0x104029e

    .line 869
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 872
    move-result-object v2

    .line 873
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 879
    move-result-object v0

    .line 880
    aput-object v0, v6, v8

    .line 882
    :goto_8
    new-instance v0, Landroid/content/Intent;

    .line 884
    const-string/jumbo v2, "com.samsung.android.knox.intent.action.CERTIFICATE_FAILURE"

    .line 887
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 890
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MODULE"

    .line 893
    aget-object v4, v6, v10

    .line 895
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.CERTIFICATE_FAILURE_MESSAGE"

    .line 901
    aget-object v4, v6, v8

    .line 903
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 906
    const-string/jumbo v2, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 909
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 912
    new-instance v2, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;

    .line 914
    invoke-direct {v2, v1, v3, v6, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy$3;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I[Ljava/lang/String;Landroid/content/Intent;)V

    .line 917
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 920
    const-string/jumbo v0, "notificateSignatureFailureToUser"

    .line 923
    invoke-virtual {v1, v3, v0, v10}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPolicyValueBackwardCompatibleAsUser(ILjava/lang/String;Z)Z

    .line 926
    move-result v0

    .line 927
    if-eqz v0, :cond_d

    .line 929
    if-eqz p3, :cond_d

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    .line 933
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 936
    iget-object v1, v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 938
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 941
    move-result-object v2

    .line 942
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 945
    move-result-object v2

    .line 946
    const v3, 0x1040481

    .line 949
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 952
    move-result-object v1

    .line 953
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 956
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    aget-object v1, v6, v10

    .line 961
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    const-string v1, " - "

    .line 966
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    aget-object v1, v6, v8

    .line 971
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 977
    move-result-object v0

    .line 978
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 981
    :cond_d
    return-void

    .line 982
    nop

    .line 983
    :pswitch_data_0
    .packed-switch -0x69
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 993
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 8
    move-result v0

    .line 9
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_1

    .line 15
    new-instance v0, Landroid/content/Intent;

    .line 17
    const-string/jumbo v1, "com.samsung.android.knox.intent.action.CERTIFICATE_REMOVED"

    .line 20
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.CERTIFICATE_REMOVED_SUBJECT"

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    const-string/jumbo v1, "com.samsung.android.knox.intent.extra.USER_ID"

    .line 32
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 52
    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 59
    move-result v1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move v1, p2

    .line 62
    :goto_0
    const-string v2, "Sending certificate removed intent to user "

    .line 64
    const-string v3, " containing: "

    .line 66
    const-string v4, " (subject), "

    .line 68
    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    move-result-object p1

    .line 72
    const-string v2, " (userId)"

    .line 74
    const-string v3, "CertificatePolicy"

    .line 76
    invoke-static {p1, p2, v2, v3}, Lcom/android/server/audio/AudioService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 81
    new-instance v2, Landroid/os/UserHandle;

    .line 83
    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 86
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    .line 89
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 92
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 94
    const-string p1, "CertificatePolicy/certificateRemoved"

    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 99
    return-void

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 102
    const-string p1, "Can only be called by system user"

    .line 104
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 107
    throw p0
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final notifyUserKeystoreUnlocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mRollbackRefresh:Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;

    .line 3
    iget-object v0, v0, Lcom/android/server/enterprise/certificate/RollbackRefreshOperation;->mPendingKeystoreAction:Ljava/util/Set;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    check-cast v0, Ljava/util/HashSet;

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/4 v0, 0x4

    .line 18
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 25
    :cond_0
    return-void
.end method

.method public final onAdminAdded(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onAdminRemoved(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->sendCertificatePolicyCacheUpdateCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 10
    move-result p1

    .line 11
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 13
    iget-boolean p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mBootCompleted:Z

    .line 15
    invoke-virtual {v0, p1, p0}, Lcom/android/server/enterprise/utils/CertificateUtil;->sendIntentToSettings(IZ)V

    .line 18
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 2

    .line 1
    const-string v0, "CertificatePolicy"

    .line 3
    const-string/jumbo v1, "onPreAdminRemoval..."

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    const/4 v0, 0x2

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    .line 13
    const/4 v0, 0x3

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->clearCertificates(II)Z

    .line 17
    return-void
.end method

.method public final putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 5
    if-eqz p3, :cond_0

    .line 7
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 13
    const-string v0, ","

    .line 15
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 18
    move-result-object p3

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p3, ""

    .line 22
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 25
    return-void
.end method

.method public final removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z
    .locals 8

    .line 1
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 12
    move-result v0

    .line 13
    iget-object v1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 15
    iget v2, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    .line 17
    invoke-static {p2, v2, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->auditLog(IILjava/util/List;)V

    .line 20
    monitor-enter v1

    .line 21
    :try_start_0
    invoke-virtual {v1, v0, p2}, Lcom/android/server/enterprise/certificate/CertificateCache;->getUserIdList(II)Ljava/util/List;

    .line 24
    move-result-object p4

    .line 25
    check-cast p4, Ljava/util/ArrayList;

    .line 27
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p4

    .line 31
    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_4

    .line 37
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/lang/Integer;

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v3

    .line 50
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_1

    .line 56
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/String;

    .line 62
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 64
    check-cast v5, Ljava/util/HashMap;

    .line 66
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_2

    .line 72
    iget-object v5, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 74
    check-cast v5, Ljava/util/HashMap;

    .line 76
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object v5

    .line 80
    check-cast v5, Ljava/util/Map;

    .line 82
    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_3

    .line 88
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    move-result-object v6

    .line 92
    check-cast v6, Ljava/util/List;

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v7

    .line 98
    invoke-interface {v6, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Ljava/util/List;

    .line 107
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 110
    move-result v6

    .line 111
    if-nez v6, :cond_3

    .line 113
    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_3
    iget-object v4, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 118
    check-cast v4, Ljava/util/HashMap;

    .line 120
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 124
    check-cast v4, Ljava/util/Map;

    .line 126
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 129
    move-result-object v4

    .line 130
    invoke-interface {v4}, Ljava/util/Set;->size()I

    .line 133
    move-result v4

    .line 134
    if-nez v4, :cond_2

    .line 136
    iget-object v4, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 138
    check-cast v4, Ljava/util/HashMap;

    .line 140
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p0

    .line 145
    goto :goto_3

    .line 146
    :cond_4
    monitor-exit v1

    .line 147
    new-instance p4, Ljava/util/ArrayList;

    .line 149
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 152
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p3

    .line 156
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_6

    .line 162
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v2

    .line 166
    check-cast v2, Ljava/lang/String;

    .line 168
    monitor-enter v1

    .line 169
    :try_start_1
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    move-result-object v4

    .line 175
    check-cast v3, Ljava/util/HashMap;

    .line 177
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_5

    .line 183
    iget-object v3, v1, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 185
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    move-result-object v4

    .line 189
    check-cast v3, Ljava/util/HashMap;

    .line 191
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    move-result-object v3

    .line 195
    check-cast v3, Ljava/util/Map;

    .line 197
    if-eqz v3, :cond_5

    .line 199
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 202
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 203
    if-eqz v3, :cond_5

    .line 205
    monitor-exit v1

    .line 206
    goto :goto_1

    .line 207
    :catchall_1
    move-exception p0

    .line 208
    goto :goto_2

    .line 209
    :cond_5
    monitor-exit v1

    .line 210
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    goto :goto_1

    .line 214
    :goto_2
    monitor-exit v1

    .line 215
    throw p0

    .line 216
    :cond_6
    iget-object p3, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 218
    invoke-virtual {p3, v0, p4}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->removeCertificates(ILjava/util/List;)V

    .line 221
    iget p1, p1, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mAction:I

    .line 223
    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 226
    move-result p3

    .line 227
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->updateKeystores(III)V

    .line 230
    const/4 p0, 0x1

    .line 231
    return p0

    .line 232
    :goto_3
    monitor-exit v1

    .line 233
    throw p0
.end method

.method public final removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z
    .locals 10

    .line 1
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 3
    const/4 v6, 0x0

    .line 4
    if-eqz p2, :cond_9

    .line 6
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 12
    goto/16 :goto_6

    .line 14
    :cond_0
    new-instance v7, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;

    .line 16
    invoke-direct {v7, p0, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;-><init>(Lcom/android/server/enterprise/certificate/CertificatePolicy;I)V

    .line 19
    iget-object p3, v7, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 21
    new-instance v8, Ljava/util/ArrayList;

    .line 23
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 26
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 42
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 48
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    .line 54
    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->generateAlias(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v4, v7, Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;->mDbColumn:Ljava/lang/String;

    .line 65
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    new-instance v9, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    const-string v1, "CERTIFICATE"

    .line 79
    invoke-virtual {v0, p1, v6, v1, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_5

    .line 85
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;)Ljava/util/List;

    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Ljava/util/HashSet;

    .line 91
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 94
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 97
    move-result-object v0

    .line 98
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    move-result v1

    .line 102
    const-string v2, ","

    .line 104
    if-eqz v1, :cond_3

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/String;

    .line 112
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    goto :goto_1

    .line 137
    :cond_2
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    goto :goto_1

    .line 141
    :cond_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 148
    move-result v0

    .line 149
    if-lez v0, :cond_4

    .line 151
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    .line 154
    move-result v0

    .line 155
    invoke-virtual {p3, v6, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    .line 158
    move-result-object p3

    .line 159
    :goto_2
    move-object v5, p3

    .line 160
    goto :goto_3

    .line 161
    :cond_4
    const/4 p3, 0x0

    .line 162
    goto :goto_2

    .line 163
    :goto_3
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 165
    const/4 v2, 0x0

    .line 166
    const-string v3, "CERTIFICATE"

    .line 168
    move v1, p1

    .line 169
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putString(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 172
    move-result p3

    .line 173
    if-nez p3, :cond_5

    .line 175
    new-instance v9, Ljava/util/ArrayList;

    .line 177
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 180
    :cond_5
    new-instance p3, Ljava/util/ArrayList;

    .line 182
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 188
    move-result v0

    .line 189
    if-ge v6, v0, :cond_7

    .line 191
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 194
    move-result-object v0

    .line 195
    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_6

    .line 201
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 204
    move-result-object v0

    .line 205
    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 207
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 212
    goto :goto_4

    .line 213
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    .line 215
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 218
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 221
    move-result-object p3

    .line 222
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_8

    .line 228
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    move-result-object v0

    .line 232
    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 234
    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 237
    move-result-object v0

    .line 238
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 240
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    goto :goto_5

    .line 244
    :cond_8
    invoke-virtual {p0, v7, p1, v9, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeAliases(Lcom/android/server/enterprise/certificate/CertificatePolicy$TrustListOperation;ILjava/util/List;Ljava/util/List;)Z

    .line 247
    move-result p0

    .line 248
    return p0

    .line 249
    :cond_9
    :goto_6
    return v6
.end method

.method public final removePermissionApplicationPrivateKey(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validatePkey(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 10
    move-result-object p2

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_1

    .line 14
    invoke-static {p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->toContentValues(Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;)Landroid/content/ContentValues;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    const-string v3, "adminUid"

    .line 24
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    const-string v3, "PermAppPrivateKey"

    .line 31
    invoke-virtual {v2, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    .line 34
    move-result v1

    .line 35
    if-lez v1, :cond_0

    .line 37
    const/4 v0, 0x1

    .line 38
    :cond_0
    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getPackageName()Ljava/lang/String;

    .line 43
    move-result-object v3

    .line 44
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getAlias()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-virtual {p2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->getStorageName()Ljava/lang/String;

    .line 55
    move-result-object v5

    .line 56
    const/4 v6, 0x0

    .line 57
    move-object v1, p0

    .line 58
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->setPrivateKeyGrant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 61
    move-result p0

    .line 62
    and-int/2addr v0, p0

    .line 63
    :cond_1
    return v0
.end method

.method public final removeTrustedCaCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final removeUntrustedCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->enforceCertificatePermission$1(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->removeCertificateList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;I)Z

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final retrieveAppPermissionsFromDb(I)Ljava/util/List;
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v5, "alias"

    .line 8
    const-string/jumbo v6, "storageName"

    .line 11
    const-string v1, "adminUid"

    .line 13
    const-string/jumbo v2, "pkgName"

    .line 16
    const-string/jumbo v3, "host"

    .line 19
    const-string/jumbo v4, "port"

    .line 22
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    new-instance v2, Landroid/content/ContentValues;

    .line 28
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-static {v3, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    const-string v3, "#SelectClause#"

    .line 38
    invoke-virtual {v2, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 43
    const-string v3, "PermAppPrivateKey"

    .line 45
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    move-result-object p1

    .line 55
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_4

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroid/content/ContentValues;

    .line 67
    const/4 v2, 0x0

    .line 68
    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    .line 73
    move-result v3

    .line 74
    if-lez v3, :cond_3

    .line 76
    :try_start_0
    const-string v3, "adminUid"

    .line 78
    invoke-virtual {v1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    .line 81
    move-result-object v3

    .line 82
    const-string/jumbo v4, "pkgName"

    .line 85
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    const-string/jumbo v4, "host"

    .line 92
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 95
    move-result-object v7

    .line 96
    const-string/jumbo v4, "port"

    .line 99
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_1

    .line 105
    const/4 v4, -0x1

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v4

    .line 110
    goto :goto_1

    .line 111
    :catch_0
    move-exception v1

    .line 112
    goto :goto_3

    .line 113
    :cond_1
    :goto_1
    const-string v5, "alias"

    .line 115
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v9

    .line 119
    const-string/jumbo v5, "storageName"

    .line 122
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v10

    .line 126
    new-instance v1, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;

    .line 128
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 131
    move-result v8

    .line 132
    move-object v5, v1

    .line 133
    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    if-eqz v3, :cond_2

    .line 138
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 141
    move-result-wide v2

    .line 142
    long-to-int v2, v2

    .line 143
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 145
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 148
    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/keystore/PermissionApplicationPrivateKey;->setAdminPkgName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    goto :goto_2

    .line 153
    :catch_1
    move-exception v2

    .line 154
    move-object v11, v2

    .line 155
    move-object v2, v1

    .line 156
    move-object v1, v11

    .line 157
    goto :goto_3

    .line 158
    :cond_2
    :goto_2
    move-object v2, v1

    .line 159
    goto :goto_4

    .line 160
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    const-string v4, "Parsing ContentValues error"

    .line 164
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 174
    const-string v3, "CertificatePolicy"

    .line 176
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_3
    :goto_4
    if-eqz v2, :cond_0

    .line 181
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    goto/16 :goto_0

    .line 186
    :cond_4
    return-object v0
.end method

.method public final setPrivateKeyGrant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    const-string/jumbo v0, "setPrivateKeyGrant - is KeyChainService running for user "

    .line 4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7
    move-result-wide v1

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {v3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-static {v3, p1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getApplicationInfo(IILjava/lang/String;)Landroid/content/pm/ApplicationInfo;

    .line 21
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 22
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 25
    const/4 v1, 0x1

    .line 26
    if-nez v4, :cond_1

    .line 28
    if-eqz p5, :cond_0

    .line 30
    return v3

    .line 31
    :cond_0
    return v1

    .line 32
    :cond_1
    iget v2, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 37
    move-result-wide v4

    .line 38
    :try_start_1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 40
    new-instance v6, Landroid/os/UserHandle;

    .line 42
    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 45
    invoke-static {p0, v6}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 48
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 52
    if-eqz p0, :cond_3

    .line 54
    if-eqz p4, :cond_2

    .line 56
    :try_start_2
    new-instance p1, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 58
    invoke-direct {p1, p4}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1, p3}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    .line 76
    move-result-object p3

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1, v2, p3, p5}, Landroid/security/IKeyChainService;->setGrant(ILjava/lang/String;Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    move v3, v1

    .line 88
    goto :goto_3

    .line 89
    :goto_1
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 92
    throw p1

    .line 93
    :catch_0
    :goto_2
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 96
    goto :goto_4

    .line 97
    :cond_3
    :goto_3
    if-eqz p0, :cond_4

    .line 99
    goto :goto_2

    .line 100
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 102
    const-string/jumbo p0, "com.sec.android.app.sbrowser"

    .line 105
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    :cond_5
    return v3

    .line 109
    :catchall_1
    move-exception p0

    .line 110
    goto :goto_5

    .line 111
    :catch_1
    :try_start_3
    const-string p0, "CertificatePolicy"

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    const-string p1, "?"

    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    return v3

    .line 137
    :goto_5
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0

    .line 141
    :catch_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 144
    return v3

    .line 145
    :catchall_2
    move-exception p0

    .line 146
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw p0
.end method

.method public final systemReady()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    const-string/jumbo v1, "cert_migration"

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getGenericValueAsUser(ILjava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v3, "ok"

    .line 14
    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 22
    goto/16 :goto_2

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 26
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 29
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 31
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 34
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUserKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 36
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 39
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mNativeKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 41
    invoke-virtual {v0}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->performKeystoreUpgrade()V

    .line 44
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 46
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 66
    check-cast v4, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 71
    move-result v4

    .line 72
    const-string/jumbo v5, "userRemovedList"

    .line 75
    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getGenericListAsUser(ILjava/lang/String;)Ljava/util/List;

    .line 78
    move-result-object v6

    .line 79
    new-instance v7, Ljava/util/ArrayList;

    .line 81
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 84
    check-cast v6, Ljava/util/ArrayList;

    .line 86
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    move-result-object v6

    .line 90
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    move-result v8

    .line 94
    if-eqz v8, :cond_3

    .line 96
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Ljava/lang/String;

    .line 102
    const-string v9, "_"

    .line 104
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 107
    move-result v9

    .line 108
    const/4 v10, -0x1

    .line 109
    if-eq v9, v10, :cond_2

    .line 111
    invoke-virtual {v8, v2, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 114
    move-result-object v10

    .line 115
    :try_start_0
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 121
    move-result v10

    .line 122
    add-int/lit8 v9, v9, 0x1

    .line 124
    if-le v10, v9, :cond_1

    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    move-result-object v8

    .line 130
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    goto :goto_1

    .line 134
    :catch_0
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {p0, v4, v5, v7}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->putGenericListAsUser(ILjava/lang/String;Ljava/util/Collection;)V

    .line 145
    goto :goto_0

    .line 146
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 148
    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putGenericValueAsUser(ILjava/lang/String;Ljava/lang/String;)Z

    .line 151
    :goto_2
    return-void
.end method

.method public final triggerContainerOperation(IIII)V
    .locals 6

    .line 1
    if-nez p1, :cond_3

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 10
    invoke-virtual {v0}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Integer;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    move-result v2

    .line 36
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 42
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_0

    .line 51
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 56
    move-result v2

    .line 57
    if-ne p2, v2, :cond_0

    .line 59
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 61
    monitor-enter v2

    .line 62
    :try_start_0
    iget-object v3, v2, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 64
    check-cast v3, Ljava/util/HashMap;

    .line 66
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 69
    move-result v3

    .line 70
    const/4 v4, 0x0

    .line 71
    if-eqz v3, :cond_1

    .line 73
    iget-object v3, v2, Lcom/android/server/enterprise/certificate/CertificateCache;->mCache:Ljava/util/Map;

    .line 75
    check-cast v3, Ljava/util/HashMap;

    .line 77
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v3

    .line 81
    check-cast v3, Ljava/util/Map;

    .line 83
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 86
    move-result-object v3

    .line 87
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v3

    .line 91
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v5

    .line 95
    if-eqz v5, :cond_1

    .line 97
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v5

    .line 101
    check-cast v5, Ljava/util/Map$Entry;

    .line 103
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    move-result-object v5

    .line 107
    check-cast v5, Ljava/util/List;

    .line 109
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 112
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    add-int/2addr v4, v5

    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    goto :goto_2

    .line 117
    :cond_1
    monitor-exit v2

    .line 118
    if-ne v4, p4, :cond_0

    .line 120
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    goto :goto_0

    .line 124
    :goto_2
    monitor-exit v2

    .line 125
    throw p0

    .line 126
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 129
    move-result-object p1

    .line 130
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    move-result p2

    .line 134
    if-eqz p2, :cond_3

    .line 136
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 139
    move-result-object p2

    .line 140
    check-cast p2, Ljava/lang/Integer;

    .line 142
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 145
    move-result p2

    .line 146
    invoke-virtual {p0, p3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 149
    goto :goto_3

    .line 150
    :cond_3
    return-void
.end method

.method public final updateKeystores(III)V
    .locals 4

    .line 1
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_4

    .line 9
    if-eq p1, v2, :cond_3

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq p1, v3, :cond_1

    .line 14
    const/4 p2, 0x3

    .line 15
    if-eq p1, p2, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    if-nez p2, :cond_2

    .line 24
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 31
    invoke-virtual {p0, v0, p3, v1, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    .line 34
    goto :goto_0

    .line 35
    :cond_3
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 38
    goto :goto_0

    .line 39
    :cond_4
    if-nez p2, :cond_5

    .line 41
    invoke-virtual {p0, v2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 44
    goto :goto_0

    .line 45
    :cond_5
    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->executeRollbackRefresh(II)V

    .line 48
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->triggerContainerOperation(IIII)V

    .line 51
    :goto_0
    return-void
.end method

.method public final validateAlias(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ", userId : "

    .line 7
    const-string v2, ", packageName : "

    .line 9
    const-string v3, "CertificatePolicy"

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string p0, " validateAlias called. storage name : null or empty, alias : "

    .line 16
    invoke-static {p0, p2, v2, p3, v1}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {p0, p4, v3}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 23
    move-object p0, p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, " validateAlias called. storage name : "

    .line 27
    const-string v5, ", alias : "

    .line 29
    invoke-static {v0, p1, v5, p2, v2}, Landroid/net/shared/InitialConfiguration$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    const/4 p0, 0x0

    .line 55
    invoke-static {p0, p4, p3}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 58
    move-object p0, v4

    .line 59
    :goto_0
    if-nez p5, :cond_1

    .line 61
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 64
    move-result-object p5

    .line 65
    :cond_1
    invoke-interface {p5, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 71
    return-object p0

    .line 72
    :cond_2
    return-object v4
.end method

.method public final validateCertificateAtInstall(Lcom/samsung/android/knox/keystore/CertificateInfo;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final validateCertificateAtInstallAsUser(Lcom/samsung/android/knox/keystore/CertificateInfo;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    .line 10
    const/4 v1, 0x0

    .line 11
    aput-object p1, v0, v1

    .line 13
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method public final varargs validateCerts(I[Ljava/security/cert/X509Certificate;)I
    .locals 6

    .line 1
    const-string v0, "Should not happen!"

    .line 3
    const-string v1, "CertificatePolicy"

    .line 5
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    move-result-object p2

    .line 9
    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    move-result v4

    .line 19
    const/4 v5, 0x1

    .line 20
    if-ne v4, v5, :cond_0

    .line 22
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object p2

    .line 26
    check-cast p2, Ljava/security/cert/X509Certificate;

    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getCertificateChainFromSystem(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    .line 31
    move-result-object v3

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    goto/16 :goto_8

    .line 36
    :catch_1
    move-exception p0

    .line 37
    goto/16 :goto_9

    .line 39
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 45
    move-result p1

    .line 46
    if-ne p1, v5, :cond_1

    .line 48
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 50
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 55
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    iget-object p0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mCheckRevocation:Lcom/android/server/enterprise/certificate/CertificatePolicy$1;

    .line 64
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 69
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 72
    move-result p0

    .line 73
    sub-int/2addr p0, v5

    .line 74
    invoke-interface {v3, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    move-result-object p0

    .line 78
    check-cast p0, Ljava/security/cert/X509Certificate;

    .line 80
    :goto_1
    new-instance p1, Ljava/security/cert/TrustAnchor;

    .line 82
    const/4 p2, 0x0

    .line 83
    invoke-direct {p1, p0, p2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 86
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 89
    move-result-object p0

    .line 90
    const-string p1, "X.509"

    .line 92
    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    .line 99
    move-result-object p1
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :try_start_1
    new-instance p2, Ljava/security/cert/PKIXParameters;

    .line 102
    invoke-direct {p2, p0}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_5

    .line 105
    :try_start_2
    const-string p0, "PKIX"

    .line 107
    invoke-static {p0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    .line 110
    move-result-object p0
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4

    .line 111
    invoke-virtual {p2, v2}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 114
    :try_start_3
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    .line 117
    const-string p0, "Validation success"

    .line 119
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_2

    .line 122
    const/4 v2, -0x1

    .line 123
    goto/16 :goto_7

    .line 125
    :catch_2
    move-exception p0

    .line 126
    goto :goto_2

    .line 127
    :catch_3
    move-exception p0

    .line 128
    goto/16 :goto_6

    .line 130
    :goto_2
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    new-instance p2, Ljava/lang/StringBuilder;

    .line 136
    const-string v0, "Validation failed: "

    .line 138
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object p2

    .line 148
    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string p2, "Additional certificate path checker failed."

    .line 153
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    move-result p2

    .line 157
    if-eqz p2, :cond_2

    .line 159
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    .line 162
    move-result-object p2

    .line 163
    if-eqz p2, :cond_2

    .line 165
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_2

    .line 171
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    :cond_2
    const-string/jumbo p2, "is revoked"

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    move-result p2

    .line 182
    if-nez p2, :cond_9

    .line 184
    const-string p2, "Certificate revocation after"

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 189
    move-result p2

    .line 190
    if-eqz p2, :cond_3

    .line 192
    goto :goto_5

    .line 193
    :cond_3
    const-string p2, "OCSP check failed!"

    .line 195
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 198
    move-result p2

    .line 199
    if-nez p2, :cond_8

    .line 201
    const-string p2, "Certificate status could not be determined."

    .line 203
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 206
    move-result p2

    .line 207
    if-nez p2, :cond_8

    .line 209
    const-string p2, "CRL distribution point extension could not be read"

    .line 211
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 214
    move-result p2

    .line 215
    if-nez p2, :cond_8

    .line 217
    const-string p2, "No additional CRL locations could be decoded from CRL distribution point extension."

    .line 219
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 222
    move-result p2

    .line 223
    if-nez p2, :cond_8

    .line 225
    const-string p2, "Distribution points could not be read."

    .line 227
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 230
    move-result p2

    .line 231
    if-nez p2, :cond_8

    .line 233
    const-string p2, "No valid CRL found."

    .line 235
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 238
    move-result p2

    .line 239
    if-nez p2, :cond_8

    .line 241
    const-string p2, "Unable to get CRL for certificate"

    .line 243
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 246
    move-result p2

    .line 247
    if-eqz p2, :cond_4

    .line 249
    goto :goto_4

    .line 250
    :cond_4
    const-string p2, ", expiration time"

    .line 252
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 255
    move-result p2

    .line 256
    if-nez p2, :cond_7

    .line 258
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    .line 261
    move-result-object p2

    .line 262
    instance-of p2, p2, Ljava/security/cert/CertificateExpiredException;

    .line 264
    if-eqz p2, :cond_5

    .line 266
    goto :goto_3

    .line 267
    :cond_5
    const-string p2, ", validation time"

    .line 269
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 272
    move-result p1

    .line 273
    if-nez p1, :cond_6

    .line 275
    invoke-virtual {p0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    .line 278
    move-result-object p0

    .line 279
    instance-of p0, p0, Ljava/security/cert/CertificateNotYetValidException;

    .line 281
    if-eqz p0, :cond_a

    .line 283
    :cond_6
    const/4 v2, 0x3

    .line 284
    goto :goto_7

    .line 285
    :cond_7
    :goto_3
    const/4 v2, 0x4

    .line 286
    goto :goto_7

    .line 287
    :cond_8
    :goto_4
    const/16 v2, 0xd

    .line 289
    goto :goto_7

    .line 290
    :cond_9
    :goto_5
    const/4 v2, 0x2

    .line 291
    goto :goto_7

    .line 292
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 294
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object p0

    .line 304
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_a
    :goto_7
    return v2

    .line 308
    :catch_4
    move-exception p0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    .line 311
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    move-result-object p0

    .line 321
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    return v2

    .line 325
    :catch_5
    move-exception p0

    .line 326
    new-instance p1, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    move-result-object p0

    .line 338
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return v2

    .line 342
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 344
    const-string p2, "If FIPS mode is turned on, cannot use MD5 algorithm : "

    .line 346
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    move-result-object p0

    .line 356
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v2

    .line 360
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 362
    const-string p2, "Failure generating cert path: "

    .line 364
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    move-result-object p0

    .line 374
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const/16 p0, 0x8

    .line 379
    return p0
.end method

.method public final validateChainAtInstall(Ljava/util/List;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 5
    move-result v0

    .line 6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstallAsUser(Ljava/util/List;I)I

    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public final validateChainAtInstallAsUser(Ljava/util/List;I)I
    .locals 3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    sub-int/2addr v0, v1

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 13
    invoke-virtual {v0}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 19
    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 24
    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    .line 27
    move-result v0

    .line 28
    const/4 v1, -0x1

    .line 29
    if-ne v0, v1, :cond_1

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    move-result v1

    .line 37
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object p1

    .line 44
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_0

    .line 50
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/samsung/android/knox/keystore/CertificateInfo;

    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/knox/keystore/CertificateInfo;->getCertificate()Ljava/security/cert/Certificate;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 69
    move-result p1

    .line 70
    new-array p1, p1, [Ljava/security/cert/X509Certificate;

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    move-result-object p1

    .line 76
    check-cast p1, [Ljava/security/cert/X509Certificate;

    .line 78
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCerts(I[Ljava/security/cert/X509Certificate;)I

    .line 81
    move-result v0

    .line 82
    :cond_1
    return v0
.end method

.method public final verifyCertificateTrustful(Ljava/security/cert/X509Certificate;II)Z
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getPersonaManagerAdapter$2()Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 18
    invoke-virtual {v0, p3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 21
    move-result v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, -0x1

    .line 24
    :goto_0
    const/4 v7, 0x1

    .line 25
    and-int/2addr p2, v7

    .line 26
    if-ne p2, v7, :cond_1

    .line 28
    iget-object p2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 30
    invoke-virtual {p2, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 33
    move-result p2

    .line 34
    if-eqz p2, :cond_1

    .line 36
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 38
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 40
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mTrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 42
    move-object v4, p1

    .line 43
    move v5, p3

    .line 44
    move v6, v0

    .line 45
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    .line 48
    move-result p2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move p2, v7

    .line 51
    :goto_1
    if-eqz p2, :cond_2

    .line 53
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 55
    invoke-virtual {v1, p3}, Lcom/android/server/enterprise/certificate/CertificateCache;->getCacheEntrySize(I)I

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedKeyStore:Lcom/android/server/enterprise/certificate/EdmKeyStore;

    .line 63
    iget-object v2, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mContext:Landroid/content/Context;

    .line 65
    iget-object v3, p0, Lcom/android/server/enterprise/certificate/CertificatePolicy;->mUntrustedCache:Lcom/android/server/enterprise/certificate/CertificateCache;

    .line 67
    move-object v4, p1

    .line 68
    move v5, p3

    .line 69
    move v6, v0

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/certificate/EdmKeyStore;->containsCertificateOrChain(Landroid/content/Context;Lcom/android/server/enterprise/certificate/CertificateCache;Ljava/security/cert/X509Certificate;II)Z

    .line 73
    move-result p0

    .line 74
    xor-int/2addr p0, v7

    .line 75
    and-int/2addr p2, p0

    .line 76
    :cond_2
    return p2
.end method
