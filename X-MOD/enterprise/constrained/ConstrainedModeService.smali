.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService;
.super Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CONSTRAINED_DELIMITER:[B

.field public static final lock:Ljava/lang/Object;

.field public static sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# instance fields
.field public final mCachedConstrainedData:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

.field public final mReceiver:Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 4
    fill-array-data v0, :array_0

    .line 7
    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->lock:Ljava/lang/Object;

    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->sConstrainedService:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    .line 19
    return-void

    .line 20
    nop

    .line 21
    :array_0
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/localservice/ConstrainedModeInternal;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 7
    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 16
    new-instance v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;

    .line 18
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;-><init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V

    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 23
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 25
    invoke-direct {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    .line 32
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 37
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 43
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 49
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V

    .line 53
    new-instance p1, Ljava/lang/Thread;

    .line 55
    new-instance v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;

    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService$2;-><init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V

    .line 60
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 66
    return-void
.end method

.method public static split([B[B)Ljava/util/List;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    array-length v4, p1

    .line 10
    if-ge v2, v4, :cond_3

    .line 12
    move v4, v1

    .line 13
    :goto_1
    array-length v5, p0

    .line 14
    if-ge v4, v5, :cond_2

    .line 16
    add-int v5, v2, v4

    .line 18
    array-length v6, p1

    .line 19
    if-lt v5, v6, :cond_0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    aget-byte v6, p0, v4

    .line 24
    aget-byte v5, p1, v5

    .line 26
    if-eq v6, v5, :cond_1

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-static {p1, v3, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    array-length v3, p0

    .line 40
    add-int/2addr v2, v3

    .line 41
    move v3, v2

    .line 42
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_3
    array-length p0, p1

    .line 46
    invoke-static {p1, v3, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    return-object v0
.end method


# virtual methods
.method public final checkConstrainedState()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 31
    const/4 p0, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public final cleanUpConstrainedState(I)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    if-eq p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 9
    const-string v1, "android.permission.BIND_DEVICE_ADMIN"

    .line 11
    const-string v2, "Only system or itself can remove an EDM admin"

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    .line 18
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 21
    const/4 v1, 0x1

    .line 22
    const-string/jumbo v2, "status"

    .line 25
    const-string v3, "adminUid"

    .line 27
    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/server/am/Pageboost$PageboostFileDBHelper$$ExternalSyntheticOutline0;->m(ILandroid/content/ContentValues;Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    iget-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string v2, "ConstrainedStateTable"

    .line 34
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 42
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_2

    .line 48
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "ConstrainedMode"

    .line 54
    const-string/jumbo p1, "constrained state will go on"

    .line 57
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_2
    :goto_0
    return-void
.end method

.method public final disableConstrainedState(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 3
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final disableConstrainedStateInternal(ILjava/lang/String;)Z
    .locals 20

    .line 1
    move-object/from16 v7, p0

    .line 3
    const-string v8, "ConstrainedMode"

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x40

    .line 11
    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 14
    move-result v9

    .line 15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 18
    move-result-wide v10

    .line 19
    const/4 v12, 0x1

    .line 20
    const/4 v13, 0x0

    .line 21
    :try_start_0
    iget-object v0, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 23
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Ljava/util/Map$Entry;

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Lcom/samsung/android/knox/EnrollData;

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    move-object/from16 v3, p2

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string/jumbo v2, "remove! "

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 77
    move-result-object v2

    .line 78
    check-cast v2, Ljava/lang/String;

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Ljava/io/File;

    .line 92
    const-string v2, "/efs/constrained"

    .line 94
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 106
    iget-object v14, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 108
    const-string v18, "ConstrainedStateTable"

    .line 110
    const-string/jumbo v19, "status"

    .line 113
    const/16 v16, 0x0

    .line 115
    const/16 v17, 0x1

    .line 117
    move/from16 v15, p1

    .line 119
    invoke-virtual/range {v14 .. v19}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 122
    const/4 v0, 0x0

    .line 123
    const/4 v4, 0x0

    .line 124
    const/4 v5, 0x0

    .line 125
    const/4 v6, 0x0

    .line 126
    move-object/from16 v1, p0

    .line 128
    move-object/from16 v2, p2

    .line 130
    move-object v3, v0

    .line 131
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-virtual {v7, v12}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    .line 139
    goto/16 :goto_5

    .line 141
    :catch_0
    move-exception v0

    .line 142
    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 146
    move v0, v12

    .line 147
    goto :goto_2

    .line 148
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    move v0, v13

    .line 155
    :goto_2
    if-eqz v9, :cond_2

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 164
    move-result-object v1

    .line 165
    if-eqz v1, :cond_2

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1, v13}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isScreenCaptureEnabledInternal(Z)Z

    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_2

    .line 181
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1, v12}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->setScreenCapture(Z)Z

    .line 192
    const-string/jumbo v1, "setScreenCapture enabled due to disableConstrainedState"

    .line 195
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    const/16 v1, 0x8

    .line 200
    invoke-virtual {v7, v1}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->isRestrictedByConstrainedState(I)Z

    .line 203
    move-result v1

    .line 204
    xor-int/2addr v1, v12

    .line 205
    iget-object v2, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 207
    const-string v3, "BLUETOOTH"

    .line 209
    const-string/jumbo v4, "bluetoothEnabled"

    .line 212
    invoke-virtual {v2, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v2

    .line 220
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v3

    .line 224
    if-eqz v3, :cond_4

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Ljava/lang/Boolean;

    .line 232
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_3

    .line 238
    move v2, v13

    .line 239
    goto :goto_3

    .line 240
    :cond_4
    move v2, v12

    .line 241
    :goto_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 244
    move-result-wide v3

    .line 245
    :try_start_2
    const-class v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    .line 247
    sget-object v6, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-result-object v5

    .line 253
    check-cast v5, Lcom/android/server/enterprise/adapter/ISystemUIAdapter;

    .line 255
    if-eqz v2, :cond_5

    .line 257
    if-eqz v1, :cond_5

    .line 259
    goto :goto_4

    .line 260
    :cond_5
    move v12, v13

    .line 261
    :goto_4
    check-cast v5, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;

    .line 263
    invoke-virtual {v5, v13, v12}, Lcom/android/server/enterprise/adapterlayer/SystemUIAdapter;->setBluetoothAllowedAsUser(IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 266
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    const-string v1, "No data"

    .line 271
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return v0

    .line 275
    :catchall_1
    move-exception v0

    .line 276
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 279
    throw v0

    .line 280
    :goto_5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw v0
.end method

.method public final dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_9

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_8

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    .line 34
    move-result v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "  Restrict Camera : "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    and-int/lit8 v2, v0, 0x1

    .line 44
    const-string/jumbo v3, "false"

    .line 47
    const-string/jumbo v4, "true"

    .line 50
    if-lez v2, :cond_1

    .line 52
    move-object v2, v4

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move-object v2, v3

    .line 55
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    const-string v2, "  Restrict MTP : "

    .line 76
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    and-int/lit8 v2, v0, 0x4

    .line 81
    if-lez v2, :cond_2

    .line 83
    move-object v2, v4

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    move-object v2, v3

    .line 86
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    const-string v2, "  Restrict Bluetooth : "

    .line 107
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    and-int/lit8 v2, v0, 0x8

    .line 112
    if-lez v2, :cond_3

    .line 114
    move-object v2, v4

    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move-object v2, v3

    .line 117
    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    .line 136
    const-string v2, "  Restrict SDCard : "

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    and-int/lit8 v2, v0, 0x2

    .line 143
    if-lez v2, :cond_4

    .line 145
    move-object v2, v4

    .line 146
    goto :goto_4

    .line 147
    :cond_4
    move-object v2, v3

    .line 148
    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v1

    .line 162
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "  Restrict Tethering : "

    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    and-int/lit8 v2, v0, 0x10

    .line 174
    if-lez v2, :cond_5

    .line 176
    move-object v2, v4

    .line 177
    goto :goto_5

    .line 178
    :cond_5
    move-object v2, v3

    .line 179
    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    const-string v2, "  Restrict USB Debugging : "

    .line 200
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    and-int/lit8 v2, v0, 0x20

    .line 205
    if-lez v2, :cond_6

    .line 207
    move-object v2, v4

    .line 208
    goto :goto_6

    .line 209
    :cond_6
    move-object v2, v3

    .line 210
    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 216
    move-result-object v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    move-result-object v1

    .line 224
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    const-string v2, "  Restrict Screen Capture : "

    .line 231
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    and-int/lit8 v0, v0, 0x40

    .line 236
    if-lez v0, :cond_7

    .line 238
    move-object v3, v4

    .line 239
    :cond_7
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_8
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 262
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 265
    :cond_9
    return-void
.end method

.method public final enableConstrainedState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move/from16 v2, p6

    .line 7
    const/4 v3, 0x1

    .line 8
    const-string v4, "/efs/constrained"

    .line 10
    const/4 v5, 0x0

    .line 11
    if-gtz v2, :cond_0

    .line 13
    return v5

    .line 14
    :cond_0
    iget-object v6, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 16
    move/from16 v8, p1

    .line 18
    invoke-virtual {v6, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 25
    move-result-wide v13

    .line 26
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 28
    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 34
    move-result v9

    .line 35
    if-nez v9, :cond_1

    .line 37
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto/16 :goto_a

    .line 44
    :catch_0
    move-exception v0

    .line 45
    goto/16 :goto_9

    .line 47
    :cond_1
    :goto_0
    iget-object v7, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 49
    if-eqz v7, :cond_3

    .line 51
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 54
    move-result-object v7

    .line 55
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    move-result-object v7

    .line 59
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    move-result v9

    .line 63
    if-eqz v9, :cond_3

    .line 65
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    move-result-object v9

    .line 69
    check-cast v9, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 74
    move-result-object v10

    .line 75
    check-cast v10, Lcom/samsung/android/knox/EnrollData;

    .line 77
    invoke-virtual {v10}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    .line 80
    move-result-object v10

    .line 81
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_2

    .line 87
    const-string v7, "ConstrainedMode"

    .line 89
    const-string v10, "already existing values // update"

    .line 91
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v7, Ljava/io/File;

    .line 96
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Ljava/lang/String;

    .line 102
    invoke-direct {v7, v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_3
    const/4 v15, 0x0

    .line 109
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v9, "_"

    .line 116
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 129
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 132
    move-result v7

    .line 133
    const v9, 0x7fffffff

    .line 136
    and-int/2addr v7, v9

    .line 137
    new-instance v9, Ljava/io/File;

    .line 139
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 142
    move-result-object v10

    .line 143
    invoke-direct {v9, v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    move-object v12, v9

    .line 147
    :goto_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    .line 150
    move-result v9

    .line 151
    if-eqz v9, :cond_4

    .line 153
    add-int/2addr v7, v3

    .line 154
    new-instance v12, Ljava/io/File;

    .line 156
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 159
    move-result-object v9

    .line 160
    invoke-direct {v12, v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    goto :goto_1

    .line 164
    :catchall_1
    move-exception v0

    .line 165
    move-object v1, v0

    .line 166
    goto/16 :goto_7

    .line 168
    :cond_4
    shr-int/lit8 v4, v2, 0x18

    .line 170
    int-to-byte v4, v4

    .line 171
    shr-int/lit8 v7, v2, 0x10

    .line 173
    int-to-byte v7, v7

    .line 174
    shr-int/lit8 v9, v2, 0x8

    .line 176
    int-to-byte v9, v9

    .line 177
    int-to-byte v2, v2

    .line 178
    const/4 v10, 0x4

    .line 179
    new-array v10, v10, [B

    .line 181
    aput-byte v4, v10, v5

    .line 183
    aput-byte v7, v10, v3

    .line 185
    const/4 v4, 0x2

    .line 186
    aput-byte v9, v10, v4

    .line 188
    const/4 v4, 0x3

    .line 189
    aput-byte v2, v10, v4

    .line 191
    new-instance v2, Ljava/io/FileOutputStream;

    .line 193
    invoke-direct {v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 196
    if-eqz p4, :cond_5

    .line 198
    :try_start_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 201
    move-result v4

    .line 202
    if-lez v4, :cond_5

    .line 204
    const-string/jumbo v4, "normalv3"

    .line 207
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 210
    move-result-object v4

    .line 211
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 214
    goto :goto_2

    .line 215
    :catchall_2
    move-exception v0

    .line 216
    move-object v1, v0

    .line 217
    move-object v15, v2

    .line 218
    goto/16 :goto_7

    .line 220
    :cond_5
    if-eqz p3, :cond_6

    .line 222
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 225
    move-result v4

    .line 226
    if-lez v4, :cond_6

    .line 228
    const-string/jumbo v4, "normalv2"

    .line 231
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 238
    goto :goto_2

    .line 239
    :cond_6
    const-string/jumbo v4, "normal"

    .line 242
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 249
    :goto_2
    sget-object v4, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    .line 251
    :try_start_3
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 254
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    .line 257
    move-result-object v7

    .line 258
    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 261
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 264
    if-eqz v1, :cond_7

    .line 266
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    .line 269
    move-result v7

    .line 270
    if-lez v7, :cond_7

    .line 272
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    .line 275
    move-result-object v1

    .line 276
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 279
    goto :goto_3

    .line 280
    :cond_7
    const-string v1, "DEFAULT"

    .line 282
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 289
    :goto_3
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 292
    invoke-virtual {v2, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    if-eqz p3, :cond_b

    .line 297
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    .line 300
    move-result v1

    .line 301
    if-lez v1, :cond_b

    .line 303
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    .line 309
    move-result-object v1

    .line 310
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 313
    if-eqz p4, :cond_8

    .line 315
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 318
    move-result v1

    .line 319
    if-lez v1, :cond_8

    .line 321
    if-eqz p5, :cond_8

    .line 323
    new-instance v1, Landroid/content/pm/Signature;

    .line 325
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->getBytes()[B

    .line 328
    move-result-object v6

    .line 329
    invoke-direct {v1, v6}, Landroid/content/pm/Signature;-><init>([B)V

    .line 332
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 335
    move-result-object v1

    .line 336
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 339
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 342
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 345
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->getBytes()[B

    .line 348
    move-result-object v1

    .line 349
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 352
    goto :goto_6

    .line 353
    :cond_8
    iget-object v1, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    .line 355
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 358
    const/16 v1, 0x40

    .line 360
    invoke-static {v1, v5, v6}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;

    .line 363
    move-result-object v1

    .line 364
    if-eqz v1, :cond_a

    .line 366
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 368
    array-length v6, v1

    .line 369
    move v7, v5

    .line 370
    :goto_4
    if-ge v7, v6, :cond_a

    .line 372
    aget-object v9, v1, v7

    .line 374
    if-eqz v9, :cond_9

    .line 376
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    .line 379
    move-result-object v1

    .line 380
    goto :goto_5

    .line 381
    :cond_9
    add-int/2addr v7, v3

    .line 382
    goto :goto_4

    .line 383
    :cond_a
    move-object v1, v15

    .line 384
    :goto_5
    if-eqz v1, :cond_b

    .line 386
    new-instance v6, Landroid/content/pm/Signature;

    .line 388
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 391
    move-result-object v1

    .line 392
    invoke-direct {v6, v1}, Landroid/content/pm/Signature;-><init>([B)V

    .line 395
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 398
    move-result-object v1

    .line 399
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 402
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 405
    :cond_b
    :goto_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 408
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 411
    :try_start_4
    iget-object v7, v0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 413
    const-string v11, "ConstrainedStateTable"

    .line 415
    const-string/jumbo v1, "status"

    .line 418
    const/4 v9, 0x0

    .line 419
    const/4 v10, 0x1

    .line 420
    move/from16 v8, p1

    .line 422
    move-object v2, v12

    .line 423
    move-object v12, v1

    .line 424
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 427
    move-result v1

    .line 428
    if-nez v1, :cond_c

    .line 430
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 433
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 436
    return v5

    .line 437
    :cond_c
    :try_start_5
    invoke-virtual {v0, v3}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->updateConstrainedStateData(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 440
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 443
    return v3

    .line 444
    :goto_7
    if-eqz v15, :cond_d

    .line 446
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 449
    goto :goto_8

    .line 450
    :catch_1
    move-exception v0

    .line 451
    move-object v2, v0

    .line 452
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 455
    :cond_d
    :goto_8
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 456
    :goto_9
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 459
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 462
    return v5

    .line 463
    :goto_a
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw v0
.end method

.method public final getConstrainedState()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_2

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_0

    .line 31
    const/4 p0, 0x2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
.end method

.method public final getConstrainedStateAll()Ljava/util/List;
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 7
    if-eqz v2, :cond_1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 16
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/util/Map$Entry;

    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Lcom/samsung/android/knox/EnrollData;

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto :goto_4

    .line 48
    :catch_0
    move-exception p0

    .line 49
    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 53
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-nez p0, :cond_1

    .line 56
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 59
    return-object v2

    .line 60
    :cond_1
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    goto :goto_3

    .line 64
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    goto :goto_1

    .line 68
    :goto_3
    const/4 p0, 0x0

    .line 69
    return-object p0

    .line 70
    :goto_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    throw p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final isRestrictedByConstrainedState(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_1

    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/samsung/android/knox/EnrollData;

    .line 25
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/samsung/android/knox/EnrollData;->getPolicyBitMask()I

    .line 34
    move-result v0

    .line 35
    and-int/2addr v0, p1

    .line 36
    if-lez v0, :cond_0

    .line 38
    const/4 p0, 0x1

    .line 39
    return p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const-string v0, "_ConstrainedNoti"

    .line 3
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 9
    const-string/jumbo v2, "notification"

    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroid/app/NotificationManager;

    .line 18
    if-nez v1, :cond_0

    .line 20
    const-string p0, "ConstrainedMode"

    .line 22
    const-string p1, "Failed to get NotificationManager"

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void

    .line 28
    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    .line 30
    const-string v3, "CONSTRAINED_MODE"

    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-direct {v2, v3, p1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 36
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 39
    const/16 v2, 0x11ce

    .line 41
    if-eqz p5, :cond_4

    .line 43
    new-instance p5, Landroid/app/Notification$Builder;

    .line 45
    iget-object v4, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p5, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    const-wide/16 v3, 0x0

    .line 52
    invoke-virtual {p5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 55
    const v3, 0x1080720

    .line 58
    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 61
    iget-object v3, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 63
    const v4, 0x10403ef

    .line 66
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {p5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 73
    const-string v3, "DEFAULT"

    .line 75
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_1

    .line 81
    iget-object p2, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 83
    const v3, 0x1040458

    .line 86
    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 93
    new-instance p2, Landroid/app/Notification$BigTextStyle;

    .line 95
    invoke-direct {p2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 98
    iget-object v4, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 100
    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {p2, v3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 111
    goto :goto_0

    .line 112
    :cond_1
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 115
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    .line 117
    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 120
    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 123
    move-result-object p2

    .line 124
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 127
    :goto_0
    const/4 p2, 0x2

    .line 128
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 131
    const/4 p2, 0x1

    .line 132
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 135
    if-eqz p3, :cond_3

    .line 137
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    .line 140
    move-result p2

    .line 141
    if-lez p2, :cond_3

    .line 143
    new-instance p2, Landroid/content/Intent;

    .line 145
    const-string/jumbo v3, "com.samsung.android.knox.intent.action.CHECK_REENROLLMENT_INTERNAL"

    .line 148
    invoke-direct {p2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "pkg"

    .line 154
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string/jumbo p1, "url"

    .line 160
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    if-eqz p4, :cond_2

    .line 165
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    .line 168
    move-result p1

    .line 169
    if-lez p1, :cond_2

    .line 171
    const-string/jumbo p1, "targetPkgName"

    .line 174
    invoke-virtual {p2, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :cond_2
    iget-object p0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 179
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 182
    move-result p1

    .line 183
    const/high16 p3, 0x4000000

    .line 185
    invoke-static {p0, p1, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p5, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 192
    :cond_3
    invoke-virtual {p5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 195
    move-result-object p0

    .line 196
    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 199
    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 203
    :goto_1
    return-void
.end method

.method public final updateConstrainedStateData(Z)V
    .locals 33

    .line 1
    move-object/from16 v7, p0

    .line 3
    const-string/jumbo v0, "status"

    .line 6
    const-string v8, "adminUid"

    .line 8
    const/4 v9, 0x0

    .line 9
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    .line 11
    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 14
    filled-new-array {v8, v0}, [Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iget-object v2, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 20
    const-string v3, "ConstrainedStateTable"

    .line 22
    invoke-virtual {v2, v3, v1, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 25
    move-result-object v11

    .line 26
    new-instance v1, Ljava/io/File;

    .line 28
    const-string v2, "/efs/constrained"

    .line 30
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 36
    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 37
    const-string v13, "ConstrainedMode"

    .line 39
    if-eqz v12, :cond_15

    .line 41
    :try_start_1
    array-length v14, v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 42
    const/4 v15, 0x0

    .line 43
    move-object v1, v9

    .line 44
    move v6, v15

    .line 45
    :goto_0
    if-ge v6, v14, :cond_14

    .line 47
    :try_start_2
    aget-object v5, v12, v6

    .line 49
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_13

    .line 55
    invoke-virtual {v5}, Ljava/io/File;->length()J

    .line 58
    move-result-wide v2

    .line 59
    long-to-int v2, v2

    .line 60
    new-array v2, v2, [B

    .line 62
    new-instance v4, Ljava/io/FileInputStream;

    .line 64
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 67
    :try_start_3
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 70
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    .line 71
    if-nez v1, :cond_0

    .line 73
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 76
    move-object/from16 v31, v0

    .line 78
    move-object v1, v4

    .line 79
    :goto_1
    move v15, v6

    .line 80
    move-object/from16 v32, v8

    .line 82
    move-object/from16 v29, v12

    .line 84
    move/from16 v30, v14

    .line 86
    move/from16 v0, p1

    .line 88
    goto/16 :goto_13

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    move-object v9, v4

    .line 92
    goto/16 :goto_19

    .line 94
    :catch_0
    move-exception v0

    .line 95
    move-object v9, v4

    .line 96
    goto/16 :goto_17

    .line 98
    :cond_0
    :try_start_5
    sget-object v1, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->CONSTRAINED_DELIMITER:[B

    .line 100
    invoke-static {v1, v2}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->split([B[B)Ljava/util/List;

    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/util/LinkedList;

    .line 106
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 109
    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 110
    if-eqz v2, :cond_1

    .line 112
    :try_start_6
    new-instance v2, Ljava/lang/String;

    .line 114
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 118
    check-cast v3, [B

    .line 120
    invoke-virtual {v1, v15}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v16

    .line 124
    move-object/from16 v9, v16

    .line 126
    check-cast v9, [B

    .line 128
    array-length v9, v9

    .line 129
    invoke-direct {v2, v3, v15, v9}, Ljava/lang/String;-><init>([BII)V

    .line 132
    goto :goto_2

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 134
    :goto_2
    if-nez v2, :cond_2

    .line 136
    const-string/jumbo v1, "something\'s wrong // type is null"

    .line 139
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 142
    :goto_3
    move-object/from16 v31, v0

    .line 144
    move v15, v6

    .line 145
    move-object/from16 v32, v8

    .line 147
    move-object/from16 v29, v12

    .line 149
    move/from16 v30, v14

    .line 151
    move/from16 v0, p1

    .line 153
    move-object v12, v4

    .line 154
    goto/16 :goto_12

    .line 156
    :cond_2
    :try_start_7
    const-string/jumbo v3, "normal"

    .line 159
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 163
    const-string/jumbo v9, "normalv2"

    .line 166
    const-string/jumbo v15, "normalv3"

    .line 169
    if-nez v3, :cond_4

    .line 171
    :try_start_8
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    move-result v3

    .line 175
    if-nez v3, :cond_4

    .line 177
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    move-result v3

    .line 181
    if-eqz v3, :cond_3

    .line 183
    goto :goto_4

    .line 184
    :cond_3
    const-string/jumbo v1, "type is not normal"

    .line 187
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 190
    goto :goto_3

    .line 191
    :cond_4
    :goto_4
    const/4 v3, 0x1

    .line 192
    :try_start_9
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 195
    move-result-object v17
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 196
    if-eqz v17, :cond_5

    .line 198
    :try_start_a
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 201
    move-result-object v17

    .line 202
    move-object/from16 v3, v17

    .line 204
    check-cast v3, [B

    .line 206
    array-length v3, v3

    .line 207
    if-lez v3, :cond_5

    .line 209
    new-instance v3, Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 211
    move-object/from16 v17, v4

    .line 213
    const/4 v4, 0x1

    .line 214
    :try_start_b
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 217
    move-result-object v18

    .line 218
    move-object/from16 v19, v5

    .line 220
    move-object/from16 v5, v18

    .line 222
    check-cast v5, [B

    .line 224
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 227
    move-result-object v20

    .line 228
    move-object/from16 v4, v20

    .line 230
    check-cast v4, [B

    .line 232
    array-length v4, v4

    .line 233
    move/from16 v20, v6

    .line 235
    const/4 v6, 0x0

    .line 236
    invoke-direct {v3, v5, v6, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 239
    goto :goto_7

    .line 240
    :catchall_1
    move-exception v0

    .line 241
    :goto_5
    move-object/from16 v9, v17

    .line 243
    goto/16 :goto_19

    .line 245
    :catch_1
    move-exception v0

    .line 246
    :goto_6
    move-object/from16 v9, v17

    .line 248
    goto/16 :goto_17

    .line 250
    :catchall_2
    move-exception v0

    .line 251
    move-object/from16 v17, v4

    .line 253
    goto :goto_5

    .line 254
    :catch_2
    move-exception v0

    .line 255
    move-object/from16 v17, v4

    .line 257
    goto :goto_6

    .line 258
    :cond_5
    move-object/from16 v17, v4

    .line 260
    move-object/from16 v19, v5

    .line 262
    move/from16 v20, v6

    .line 264
    const/4 v3, 0x0

    .line 265
    :goto_7
    if-eqz v3, :cond_12

    .line 267
    const/4 v4, 0x2

    .line 268
    :try_start_c
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 271
    move-result-object v5

    .line 272
    if-eqz v5, :cond_11

    .line 274
    new-instance v5, Ljava/lang/String;

    .line 276
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 279
    move-result-object v6

    .line 280
    check-cast v6, [B

    .line 282
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 285
    move-result-object v21

    .line 286
    move-object/from16 v4, v21

    .line 288
    check-cast v4, [B

    .line 290
    array-length v4, v4

    .line 291
    move-object/from16 v29, v12

    .line 293
    const/4 v12, 0x0

    .line 294
    invoke-direct {v5, v6, v12, v4}, Ljava/lang/String;-><init>([BII)V

    .line 297
    const/4 v4, 0x3

    .line 298
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 301
    move-result-object v6

    .line 302
    check-cast v6, [B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 304
    if-eqz v6, :cond_6

    .line 306
    :try_start_d
    aget-byte v4, v6, v12

    .line 308
    and-int/lit16 v4, v4, 0xff

    .line 310
    shl-int/lit8 v4, v4, 0x18

    .line 312
    move/from16 v30, v14

    .line 314
    const/4 v12, 0x1

    .line 315
    aget-byte v14, v6, v12

    .line 317
    and-int/lit16 v12, v14, 0xff

    .line 319
    shl-int/lit8 v12, v12, 0x10

    .line 321
    or-int/2addr v4, v12

    .line 322
    const/4 v12, 0x2

    .line 323
    aget-byte v12, v6, v12

    .line 325
    and-int/lit16 v12, v12, 0xff

    .line 327
    shl-int/lit8 v12, v12, 0x8

    .line 329
    or-int/2addr v4, v12

    .line 330
    const/4 v12, 0x3

    .line 331
    aget-byte v6, v6, v12

    .line 333
    and-int/lit16 v6, v6, 0xff

    .line 335
    or-int/2addr v4, v6

    .line 336
    move/from16 v24, v4

    .line 338
    goto :goto_8

    .line 339
    :cond_6
    move/from16 v30, v14

    .line 341
    const/16 v24, 0x0

    .line 343
    :goto_8
    if-gtz v24, :cond_7

    .line 345
    const-string/jumbo v1, "something\'s wrong"

    .line 348
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 351
    move-object/from16 v31, v0

    .line 353
    move-object/from16 v32, v8

    .line 355
    move-object/from16 v12, v17

    .line 357
    move/from16 v15, v20

    .line 359
    move/from16 v0, p1

    .line 361
    goto/16 :goto_12

    .line 363
    :cond_7
    :try_start_e
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 367
    if-nez v4, :cond_9

    .line 369
    :try_start_f
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 372
    move-result v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 373
    if-eqz v4, :cond_8

    .line 375
    goto :goto_9

    .line 376
    :cond_8
    const/4 v4, 0x0

    .line 377
    const/16 v27, 0x0

    .line 379
    goto :goto_b

    .line 380
    :cond_9
    :goto_9
    const/4 v4, 0x4

    .line 381
    :try_start_10
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 384
    move-result-object v6
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 385
    if-eqz v6, :cond_a

    .line 387
    :try_start_11
    new-instance v6, Ljava/lang/String;

    .line 389
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 392
    move-result-object v9

    .line 393
    check-cast v9, [B

    .line 395
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 398
    move-result-object v4

    .line 399
    check-cast v4, [B

    .line 401
    array-length v4, v4

    .line 402
    const/4 v12, 0x0

    .line 403
    invoke-direct {v6, v9, v12, v4}, Ljava/lang/String;-><init>([BII)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 406
    goto :goto_a

    .line 407
    :cond_a
    const/4 v6, 0x0

    .line 408
    :goto_a
    const/4 v4, 0x5

    .line 409
    :try_start_12
    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 412
    move-result-object v4

    .line 413
    check-cast v4, [B

    .line 415
    move-object/from16 v27, v4

    .line 417
    move-object v4, v6

    .line 418
    :goto_b
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    move-result v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 422
    if-eqz v2, :cond_b

    .line 424
    :try_start_13
    new-instance v2, Ljava/lang/String;

    .line 426
    const/4 v6, 0x6

    .line 427
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 430
    move-result-object v9

    .line 431
    check-cast v9, [B

    .line 433
    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 436
    move-result-object v1

    .line 437
    check-cast v1, [B

    .line 439
    array-length v1, v1

    .line 440
    const/4 v12, 0x0

    .line 441
    invoke-direct {v2, v9, v12, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 444
    move-object v6, v2

    .line 445
    goto :goto_c

    .line 446
    :cond_b
    const/4 v12, 0x0

    .line 447
    const/4 v6, 0x0

    .line 448
    :goto_c
    :try_start_14
    new-instance v9, Lcom/samsung/android/knox/EnrollData;

    .line 450
    invoke-direct {v9}, Lcom/samsung/android/knox/EnrollData;-><init>()V

    .line 453
    iget-object v1, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mContext:Landroid/content/Context;

    .line 455
    const-string/jumbo v2, "device_policy"

    .line 458
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 461
    move-result-object v1

    .line 462
    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 464
    move-object v2, v11

    .line 465
    check-cast v2, Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 470
    move-result v14
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 471
    if-lez v14, :cond_e

    .line 473
    :try_start_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 476
    move-result-object v2

    .line 477
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    move-result v14

    .line 481
    if-eqz v14, :cond_e

    .line 483
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    move-result-object v14

    .line 487
    check-cast v14, Landroid/content/ContentValues;

    .line 489
    invoke-virtual {v14, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 492
    move-result-object v15

    .line 493
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    .line 496
    move-result v15

    .line 497
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 500
    move-result-object v14

    .line 501
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    .line 504
    move-result v14

    .line 505
    iget-object v12, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 507
    invoke-virtual {v12, v15}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 510
    move-result-object v12

    .line 511
    move-object/from16 v31, v0

    .line 513
    new-instance v0, Landroid/content/ComponentName;

    .line 515
    move-object/from16 v21, v2

    .line 517
    const-string/jumbo v2, "com.sds.mobile.mdm.client.MDMService"

    .line 520
    move-object/from16 v32, v8

    .line 522
    const-string/jumbo v8, "com.sds.mobile.mdm.client.MDMService.ui.receiver.DeviceAdminPolicyReceiver"

    .line 525
    invoke-direct {v0, v2, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const/16 v2, 0x3e8

    .line 530
    if-ne v15, v2, :cond_c

    .line 532
    if-eqz v1, :cond_c

    .line 534
    invoke-virtual {v1, v0}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    .line 537
    move-result v0

    .line 538
    if-eqz v0, :cond_c

    .line 540
    const-string v0, "Constrained mode is off - sds mdm was activated"

    .line 542
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    goto :goto_e

    .line 546
    :cond_c
    if-eqz v12, :cond_d

    .line 548
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 551
    move-result v0

    .line 552
    if-eqz v0, :cond_d

    .line 554
    const-string v0, "Constrained mode is off"

    .line 556
    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 559
    goto :goto_e

    .line 560
    :cond_d
    move-object/from16 v2, v21

    .line 562
    move-object/from16 v0, v31

    .line 564
    move-object/from16 v8, v32

    .line 566
    const/4 v12, 0x0

    .line 567
    goto :goto_d

    .line 568
    :cond_e
    move-object/from16 v31, v0

    .line 570
    move-object/from16 v32, v8

    .line 572
    const/4 v14, 0x0

    .line 573
    :goto_e
    move-object/from16 v21, v9

    .line 575
    move-object/from16 v22, v3

    .line 577
    move-object/from16 v23, v5

    .line 579
    move-object/from16 v25, v4

    .line 581
    move/from16 v26, v14

    .line 583
    move-object/from16 v28, v6

    .line 585
    :try_start_16
    invoke-virtual/range {v21 .. v28}, Lcom/samsung/android/knox/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[BLjava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 588
    move/from16 v0, p1

    .line 590
    const/4 v1, 0x1

    .line 591
    if-ne v0, v1, :cond_10

    .line 593
    if-nez v14, :cond_f

    .line 595
    const/4 v8, 0x1

    .line 596
    move-object/from16 v1, p0

    .line 598
    move-object v2, v3

    .line 599
    move-object v3, v5

    .line 600
    move-object/from16 v12, v17

    .line 602
    move-object/from16 v14, v19

    .line 604
    move-object v5, v6

    .line 605
    move/from16 v15, v20

    .line 607
    move v6, v8

    .line 608
    :try_start_17
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 611
    goto :goto_11

    .line 612
    :catchall_3
    move-exception v0

    .line 613
    :goto_f
    move-object v9, v12

    .line 614
    goto/16 :goto_19

    .line 616
    :catch_3
    move-exception v0

    .line 617
    :goto_10
    move-object v9, v12

    .line 618
    goto/16 :goto_17

    .line 620
    :cond_f
    move-object/from16 v12, v17

    .line 622
    move-object/from16 v14, v19

    .line 624
    move/from16 v15, v20

    .line 626
    const/4 v8, 0x0

    .line 627
    move-object/from16 v1, p0

    .line 629
    move-object v2, v3

    .line 630
    move-object v3, v5

    .line 631
    move-object v5, v6

    .line 632
    move v6, v8

    .line 633
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 636
    goto :goto_11

    .line 637
    :cond_10
    move-object/from16 v12, v17

    .line 639
    move-object/from16 v14, v19

    .line 641
    move/from16 v15, v20

    .line 643
    :goto_11
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 646
    move-result-object v1

    .line 647
    invoke-virtual {v10, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    goto :goto_12

    .line 651
    :catchall_4
    move-exception v0

    .line 652
    move-object/from16 v12, v17

    .line 654
    goto :goto_f

    .line 655
    :catch_4
    move-exception v0

    .line 656
    move-object/from16 v12, v17

    .line 658
    goto :goto_10

    .line 659
    :cond_11
    move-object/from16 v31, v0

    .line 661
    move-object/from16 v32, v8

    .line 663
    move-object/from16 v29, v12

    .line 665
    move/from16 v30, v14

    .line 667
    move-object/from16 v12, v17

    .line 669
    move/from16 v15, v20

    .line 671
    move/from16 v0, p1

    .line 673
    const-string/jumbo v1, "comment is null"

    .line 676
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    goto :goto_12

    .line 680
    :cond_12
    move-object/from16 v31, v0

    .line 682
    move-object/from16 v32, v8

    .line 684
    move-object/from16 v29, v12

    .line 686
    move/from16 v30, v14

    .line 688
    move-object/from16 v12, v17

    .line 690
    move/from16 v15, v20

    .line 692
    move/from16 v0, p1

    .line 694
    const-string/jumbo v1, "package name is null"

    .line 697
    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :goto_12
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 703
    const/4 v1, 0x0

    .line 704
    goto :goto_13

    .line 705
    :catchall_5
    move-exception v0

    .line 706
    move-object v12, v4

    .line 707
    goto :goto_f

    .line 708
    :catch_5
    move-exception v0

    .line 709
    move-object v12, v4

    .line 710
    goto :goto_10

    .line 711
    :catchall_6
    move-exception v0

    .line 712
    move-object v9, v1

    .line 713
    goto :goto_19

    .line 714
    :catch_6
    move-exception v0

    .line 715
    move-object v9, v1

    .line 716
    goto :goto_17

    .line 717
    :cond_13
    move-object/from16 v31, v0

    .line 719
    goto/16 :goto_1

    .line 721
    :goto_13
    add-int/lit8 v6, v15, 0x1

    .line 723
    move-object/from16 v12, v29

    .line 725
    move/from16 v14, v30

    .line 727
    move-object/from16 v0, v31

    .line 729
    move-object/from16 v8, v32

    .line 731
    const/4 v9, 0x0

    .line 732
    const/4 v15, 0x0

    .line 733
    goto/16 :goto_0

    .line 735
    :cond_14
    move-object v9, v1

    .line 736
    goto :goto_14

    .line 737
    :catchall_7
    move-exception v0

    .line 738
    const/4 v9, 0x0

    .line 739
    goto :goto_19

    .line 740
    :catch_7
    move-exception v0

    .line 741
    const/4 v9, 0x0

    .line 742
    goto :goto_17

    .line 743
    :cond_15
    const/4 v9, 0x0

    .line 744
    :goto_14
    :try_start_18
    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    .line 747
    move-result v0

    .line 748
    if-eqz v0, :cond_16

    .line 750
    const-string v0, "Data is null"

    .line 752
    invoke-static {v13, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object v0, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 757
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 760
    goto :goto_15

    .line 761
    :catchall_8
    move-exception v0

    .line 762
    goto :goto_19

    .line 763
    :catch_8
    move-exception v0

    .line 764
    goto :goto_17

    .line 765
    :cond_16
    iget-object v0, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 767
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 770
    iget-object v0, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 772
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 775
    :goto_15
    if-eqz v9, :cond_18

    .line 777
    :goto_16
    :try_start_19
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 780
    goto :goto_18

    .line 781
    :goto_17
    :try_start_1a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 784
    iget-object v0, v7, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->mCachedConstrainedData:Ljava/util/HashMap;

    .line 786
    if-eqz v0, :cond_17

    .line 788
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 791
    :cond_17
    if-eqz v9, :cond_18

    .line 793
    goto :goto_16

    .line 794
    :catch_9
    :cond_18
    :goto_18
    return-void

    .line 795
    :goto_19
    if-eqz v9, :cond_19

    .line 797
    :try_start_1b
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_a

    .line 800
    :catch_a
    :cond_19
    throw v0
.end method
