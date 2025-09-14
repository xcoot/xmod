.class public final Lcom/android/server/devicepolicy/CertificateMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field public final mRootCaReceiver:Lcom/android/server/devicepolicy/CertificateMonitor$1;

.field public final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;Landroid/os/Handler;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v1, Lcom/android/server/devicepolicy/CertificateMonitor$1;

    .line 5
    .line 6
    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/CertificateMonitor$1;-><init>(Lcom/android/server/devicepolicy/CertificateMonitor;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v3, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string p0, "android.intent.action.USER_STARTED"

    .line 21
    .line 22
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p0, "android.intent.action.USER_UNLOCKED"

    .line 26
    .line 27
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string p0, "android.security.action.TRUST_STORE_CHANGED"

    .line 31
    .line 32
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/16 p0, 0x3e8

    .line 36
    .line 37
    invoke-virtual {v3, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    move-object v5, p3

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 0

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Landroid/security/IKeyChainService;->getUserCaAliases()Landroid/content/pm/StringParceledListSlice;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_0

    .line 22
    .line 23
    .line 24
    return-object p1

    .line 25
    :catch_0
    move-exception p0

    .line 26
    goto :goto_1

    .line 27
    :catch_1
    move-exception p0

    .line 28
    goto :goto_2

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    :try_start_3
    invoke-virtual {p0}, Landroid/security/KeyChain$KeyChainConnection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_1
    move-exception p0

    .line 37
    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :goto_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    throw p1

    .line 47
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    throw p1
.end method

.method public final updateInstalledCertificates(Landroid/os/UserHandle;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v3}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/CertificateMonitor;->getInstalledCaCertificates(Landroid/os/UserHandle;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 28
    iget-object v3, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 29
    .line 30
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    if-nez v4, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v3, v6, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getCallerIdentity(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/devicepolicy/CallerIdentity;

    .line 38
    .line 39
    .line 40
    const-string v4, "android.permission.MANAGE_USERS"

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->hasCallingOrSelfPermission(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Lcom/android/internal/util/Preconditions;->checkCallAuthorization(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    monitor-enter v4

    .line 54
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    invoke-virtual {v3, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    iget-object v8, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 63
    .line 64
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    iget-object v7, v7, Lcom/android/server/devicepolicy/DevicePolicyData;->mOwnerInstalledCaCerts:Ljava/util/Set;

    .line 69
    .line 70
    check-cast v7, Landroid/util/ArraySet;

    .line 71
    .line 72
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->retainAll(Ljava/util/Collection;)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    or-int/2addr v7, v8

    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 80
    .line 81
    .line 82
    move-result v7

    .line 83
    invoke-virtual {v3, v7, v5, v5, v5}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v0

    .line 88
    goto/16 :goto_7

    .line 89
    .line 90
    :cond_2
    :goto_0
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    iget-object v3, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 96
    .line 97
    iget-boolean v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mHasFeature:Z

    .line 98
    .line 99
    if-nez v4, :cond_3

    .line 100
    .line 101
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    monitor-enter v7

    .line 111
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v3, v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyData;->mAcceptedCaCertificates:Landroid/util/ArraySet;

    .line 120
    .line 121
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 122
    :goto_2
    invoke-interface {v3}, Ljava/util/Set;->size()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    sub-int/2addr v0, v3

    .line 127
    const/16 v3, 0x21

    .line 128
    .line 129
    if-eqz v0, :cond_7

    .line 130
    .line 131
    iget-object v4, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 132
    .line 133
    :try_start_3
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 134
    .line 135
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v7

    .line 139
    iget-object v8, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {v8, v7, v5, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 142
    .line 143
    .line 144
    move-result-object v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 145
    iget-object v7, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 146
    .line 147
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 156
    .line 157
    .line 158
    move-result v9

    .line 159
    iget-object v10, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 160
    .line 161
    invoke-virtual {v10, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    .line 162
    .line 163
    .line 164
    move-result-object v9

    .line 165
    const v11, 0x1080b9c

    .line 166
    .line 167
    .line 168
    const v12, 0x1040eb7

    .line 169
    .line 170
    .line 171
    if-eqz v9, :cond_4

    .line 172
    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    invoke-virtual {v10, v8}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileOwnerName(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v8

    .line 185
    invoke-virtual {v7, v12, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v8

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    invoke-virtual {v10, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 194
    .line 195
    .line 196
    move-result v9

    .line 197
    move v15, v11

    .line 198
    goto :goto_4

    .line 199
    :cond_4
    invoke-virtual {v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerUserId()I

    .line 200
    .line 201
    .line 202
    move-result v9

    .line 203
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 204
    .line 205
    .line 206
    move-result v13

    .line 207
    if-ne v9, v13, :cond_5

    .line 208
    .line 209
    invoke-virtual {v10}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getDeviceOwnerName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v9

    .line 217
    invoke-virtual {v7, v12, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    :goto_3
    move v15, v11

    .line 222
    move-object/from16 v16, v9

    .line 223
    .line 224
    move v9, v8

    .line 225
    move-object/from16 v8, v16

    .line 226
    .line 227
    goto :goto_4

    .line 228
    :cond_5
    const v9, 0x1040eb6

    .line 229
    .line 230
    .line 231
    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v9

    .line 235
    const v11, 0x108008a

    .line 236
    .line 237
    .line 238
    goto :goto_3

    .line 239
    :goto_4
    new-instance v11, Landroid/content/Intent;

    .line 240
    .line 241
    const-string/jumbo v10, "com.android.settings.MONITORING_CERT_INFO"

    .line 242
    .line 243
    .line 244
    invoke-direct {v11, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    const v10, 0x10008000

    .line 248
    .line 249
    .line 250
    invoke-virtual {v11, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 251
    .line 252
    .line 253
    const-string v10, "android.settings.extra.number_of_certificates"

    .line 254
    .line 255
    invoke-virtual {v11, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 256
    .line 257
    .line 258
    const-string v10, "android.intent.extra.USER_ID"

    .line 259
    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    invoke-virtual {v11, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    .line 266
    .line 267
    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 268
    .line 269
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    const/high16 v10, 0x100000

    .line 274
    .line 275
    invoke-virtual {v11, v4, v10}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    .line 276
    .line 277
    .line 278
    move-result-object v4

    .line 279
    if-eqz v4, :cond_6

    .line 280
    .line 281
    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    :cond_6
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    const/4 v13, 0x0

    .line 293
    const/4 v10, 0x0

    .line 294
    const/high16 v12, 0xc000000

    .line 295
    .line 296
    move-object v9, v6

    .line 297
    invoke-static/range {v9 .. v14}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    new-instance v9, Ljava/util/HashMap;

    .line 302
    .line 303
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    const-string/jumbo v10, "count"

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    new-instance v0, Landroid/app/Notification$Builder;

    .line 317
    .line 318
    sget-object v10, Lcom/android/internal/notification/SystemNotificationChannels;->SECURITY:Ljava/lang/String;

    .line 319
    .line 320
    invoke-direct {v0, v6, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    const v6, 0x1040eb8

    .line 328
    .line 329
    .line 330
    invoke-static {v7, v9, v6}, Landroid/util/PluralsMessageFormatter;->format(Landroid/content/res/Resources;Ljava/util/Map;I)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v6

    .line 334
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const v4, 0x106001c

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    goto :goto_5

    .line 362
    :catch_0
    move-exception v0

    .line 363
    const-string v4, "Create context as %s failed"

    .line 364
    .line 365
    filled-new-array/range {p1 .. p1}, [Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    move-result-object v5

    .line 369
    const-string v7, "DevicePolicyManager"

    .line 370
    .line 371
    invoke-static {v7, v0, v4, v5}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :goto_5
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 375
    .line 376
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    const-string v1, "DevicePolicyManager"

    .line 381
    .line 382
    invoke-virtual {v0, v1, v3, v6, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 383
    .line 384
    .line 385
    goto :goto_6

    .line 386
    :cond_7
    iget-object v0, v1, Lcom/android/server/devicepolicy/CertificateMonitor;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v1, "DevicePolicyManager"

    .line 393
    .line 394
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 395
    .line 396
    .line 397
    :goto_6
    return-void

    .line 398
    :catchall_1
    move-exception v0

    .line 399
    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 400
    throw v0

    .line 401
    :goto_7
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 402
    throw v0

    .line 403
    :catch_1
    move-exception v0

    .line 404
    const-string v1, "DevicePolicyManager"

    .line 405
    .line 406
    const-string v2, "Could not retrieve certificates from KeyChain service for user %d"

    .line 407
    .line 408
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 409
    .line 410
    .line 411
    move-result-object v3

    .line 412
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    .line 418
    .line 419
    return-void
.end method
