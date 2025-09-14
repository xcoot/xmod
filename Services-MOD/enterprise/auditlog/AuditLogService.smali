.class public final Lcom/android/server/enterprise/auditlog/AuditLogService;
.super Lcom/samsung/android/knox/log/IAuditLog$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final swComponentWhitelist:[Ljava/lang/String;


# instance fields
.field public final mBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;

.field public final mContainerOwnerCache:Landroid/content/ContentValues;

.field public final mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public final mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

.field public volatile mIsBootCompleted:Z

.field public final mLinkedHashMap:Ljava/util/Map;

.field public final mMessagePackage:Ljava/lang/String;

.field public final mPattern:Ljava/util/regex/Pattern;

.field public final mRemovableMediaBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const-string/jumbo v5, "fscrypt"

    .line 4
    const-string v6, "AndroidKeyStoreMaintenance"

    .line 6
    const-string v0, "KeyStore"

    .line 8
    const-string v1, "AndroidKeyStoreSpi"

    .line 10
    const-string v2, "PKIXRevocationChecker"

    .line 12
    const-string v3, "CertPathValidator"

    .line 14
    const-string/jumbo v4, "ecryptfs"

    .line 17
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/knox/log/IAuditLog$Stub;-><init>()V

    .line 3
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    .line 4
    new-instance v0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;-><init>(Lcom/android/server/enterprise/auditlog/AuditLogService;I)V

    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    .line 5
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    .line 6
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 7
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 8
    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 10
    iput-boolean v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 12
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 13
    const-string p1, "AUDITLOG"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 17
    const-string v2, "adminUid"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 18
    const-string v4, "auditLogEnabled"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 19
    new-instance v4, Lcom/android/server/enterprise/auditlog/Admin;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v3}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    const-string v3, "auditCriticalSize"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 22
    iget-object v5, v4, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v5, v5, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 23
    iput v3, v5, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 24
    iput-boolean v1, v5, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 25
    :cond_1
    const-string v3, "auditMaximumSize"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 26
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    .line 27
    iget-object v5, v4, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v5, v5, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 28
    iput v3, v5, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 29
    iput-boolean v1, v5, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 30
    :cond_2
    const-string v3, "auditLogMDM"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    const-string v3, "auditLogBufferSize"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 33
    iget-object v3, v4, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    iget-object v3, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 34
    iput-wide v5, v3, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 35
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 36
    :cond_3
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    move-result-object v0

    .line 37
    iput-object v0, v4, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 38
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    move-result-object v0

    .line 42
    iput-object v0, v4, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 44
    :cond_4
    const-string p1, "(^Admin) ([0-9]+) (.*$)"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 45
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 46
    monitor-enter p1

    .line 47
    :try_start_2
    iput-object v0, p1, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 48
    monitor-exit p1

    .line 49
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 50
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 51
    const-string v2, "android.intent.action.REBOOT"

    .line 52
    const-string v3, "android.intent.action.TIME_SET"

    .line 53
    const-string v4, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 54
    invoke-static {p1, v0, v2, v3, v4}, Lcom/android/server/VcnManagementService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object p1

    .line 55
    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 57
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    const-string p1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string p1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string/jumbo p1, "file"

    invoke-virtual {v7, p1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 61
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mRemovableMediaBroadcastReceiver:Lcom/android/server/enterprise/auditlog/AuditLogService$1;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/enterprise/utils/Utils;->HEX_DIGITS:[C

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 64
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_MESSAGE_CONFIG_PACKAGE_NAME"

    .line 65
    const-string/jumbo v4, "com.android.mms"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 67
    :cond_5
    :try_start_3
    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object p1

    .line 68
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(IILjava/lang/String;)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v4, v2

    .line 69
    :catch_0
    :goto_1
    iput-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    return-void

    :catchall_1
    move-exception p0

    .line 70
    monitor-exit p1

    throw p0
.end method

.method public static checkAuditPrivilegedAllowed(Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget-object v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->swComponentWhitelist:[Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, v1

    .line 5
    :goto_0
    const/4 v3, 0x7

    .line 6
    if-ge v2, v3, :cond_1

    .line 8
    aget-object v3, v0, v2

    .line 10
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 17
    return p0

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v2, "Component "

    .line 25
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p0, " is not allowed to store audit messages!"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 40
    const-string v0, "AuditLogService"

    .line 42
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return v1
.end method

.method public static extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 11

    .line 1
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 6
    if-eqz p0, :cond_5

    .line 8
    const-string v1, "auditLogRuleSeverity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "auditLogRuleOutcome"

    .line 16
    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 19
    move-result-object v2

    .line 20
    const-string v3, "auditLogRuleGroups"

    .line 22
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v4

    .line 30
    const/4 v5, 0x0

    .line 31
    const-string v6, ","

    .line 33
    const/4 v7, 0x0

    .line 34
    if-nez v4, :cond_0

    .line 36
    new-instance v4, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 41
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    array-length v8, v3

    .line 46
    move v9, v5

    .line 47
    :goto_0
    if-ge v9, v8, :cond_1

    .line 49
    aget-object v10, v3, v9

    .line 51
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    move-result-object v10

    .line 55
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    add-int/lit8 v9, v9, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    move-object v4, v7

    .line 62
    :cond_1
    const-string v3, "auditLogRuleUsers"

    .line 64
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object p0

    .line 68
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_2

    .line 74
    new-instance v7, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    array-length v3, p0

    .line 84
    :goto_1
    if-ge v5, v3, :cond_2

    .line 86
    aget-object v6, p0, v5

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 91
    move-result-object v6

    .line 92
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 103
    move-result p0

    .line 104
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setSeverityRule(I)V

    .line 107
    :cond_3
    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 112
    move-result p0

    .line 113
    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setOutcomeRule(I)V

    .line 116
    :cond_4
    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setGroupsRule(Ljava/util/List;)V

    .line 119
    invoke-virtual {v0, v7}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->setUsersRule(Ljava/util/List;)V

    .line 122
    :cond_5
    return-object v0
.end method

.method public static filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZII)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x2

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eq p1, v0, :cond_1

    .line 15
    if-ne p2, v1, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 20
    move-result p1

    .line 21
    if-eq p1, v1, :cond_1

    .line 23
    :cond_0
    if-nez p2, :cond_4

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_4

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 50
    move-result-object p1

    .line 51
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p2

    .line 55
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_3

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result p1

    .line 75
    if-nez p1, :cond_3

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 88
    move-result p0

    .line 89
    if-nez p0, :cond_3

    .line 91
    const/4 p0, -0x1

    .line 92
    if-ne p4, p0, :cond_4

    .line 94
    :cond_3
    return v1

    .line 95
    :cond_4
    const/4 p0, 0x0

    .line 96
    return p0
.end method

.method public static getProcessName$1(I)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "/proc/"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "/cmdline"

    .line 21
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 31
    :try_start_1
    new-instance p0, Ljava/io/InputStreamReader;

    .line 33
    const-string/jumbo v0, "iso-8859-1"

    .line 36
    invoke-direct {p0, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    new-instance v0, Ljava/io/BufferedReader;

    .line 41
    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 44
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->read()I

    .line 47
    move-result v2

    .line 48
    if-lez v2, :cond_0

    .line 50
    int-to-char v2, v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    move-object v2, v0

    .line 57
    goto/16 :goto_4

    .line 59
    :catch_0
    move-exception v2

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 64
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    .line 67
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 70
    goto :goto_3

    .line 71
    :catchall_1
    move-exception v1

    .line 72
    goto :goto_4

    .line 73
    :catch_1
    move-exception v0

    .line 74
    move-object v7, v2

    .line 75
    move-object v2, v0

    .line 76
    move-object v0, v7

    .line 77
    goto :goto_2

    .line 78
    :catchall_2
    move-exception v1

    .line 79
    move-object p0, v2

    .line 80
    goto :goto_4

    .line 81
    :catch_2
    move-exception p0

    .line 82
    move-object v0, v2

    .line 83
    move-object v2, p0

    .line 84
    move-object p0, v0

    .line 85
    goto :goto_2

    .line 86
    :catchall_3
    move-exception v1

    .line 87
    move-object p0, v2

    .line 88
    move-object v3, p0

    .line 89
    goto :goto_4

    .line 90
    :catch_3
    move-exception p0

    .line 91
    move-object v0, v2

    .line 92
    move-object v3, v0

    .line 93
    move-object v2, p0

    .line 94
    move-object p0, v3

    .line 95
    :goto_2
    :try_start_4
    const-string v4, "AuditLogService"

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v6, "Exception: "

    .line 104
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v2

    .line 118
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 126
    :cond_1
    if-eqz p0, :cond_2

    .line 128
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    .line 131
    :cond_2
    if-eqz v3, :cond_3

    .line 133
    goto :goto_1

    .line 134
    :cond_3
    :goto_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 138
    return-object p0

    .line 139
    :goto_4
    if-eqz v2, :cond_4

    .line 141
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 144
    :cond_4
    if-eqz p0, :cond_5

    .line 146
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    .line 149
    :cond_5
    if-eqz v3, :cond_6

    .line 151
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 154
    :cond_6
    throw v1
.end method

.method public static isBuildUserShip()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "ro.build.type"

    .line 4
    const-string/jumbo v1, "user"

    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const-string/jumbo v0, "ro.product_ship"

    .line 20
    const-string/jumbo v1, "true"

    .line 23
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method


# virtual methods
.method public final appendLogMessageWithCallingUser(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 13
    move-result v2

    .line 14
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getProcessName$1(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p1, "\n[logged by: "

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "/"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string p0, ", pid: "

    .line 49
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const-string p0, "]"

    .line 57
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "Exception: "

    .line 66
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    const-string p1, "AuditLogService"

    .line 82
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method

.method public final auditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v8, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    move-object v6, p6

    .line 9
    move-object/from16 v7, p7

    .line 11
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public final auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move/from16 v2, p2

    .line 6
    move/from16 v3, p3

    .line 8
    move/from16 v4, p4

    .line 10
    move/from16 v5, p5

    .line 12
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    .line 15
    move-result v6

    .line 16
    if-nez v6, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v6

    .line 23
    if-nez v6, :cond_11

    .line 25
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_1

    .line 31
    goto/16 :goto_a

    .line 33
    :cond_1
    const/4 v6, -0x1

    .line 34
    move/from16 v7, p9

    .line 36
    if-ne v7, v6, :cond_5

    .line 38
    if-eqz v1, :cond_2

    .line 40
    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 46
    move-result v1

    .line 47
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 50
    move-result v1

    .line 51
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 54
    move-result v7

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 58
    move-result v8

    .line 59
    if-eq v7, v8, :cond_4

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 64
    move-result v7

    .line 65
    if-ne v5, v7, :cond_3

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v7, v1

    .line 69
    goto :goto_2

    .line 70
    :cond_4
    :goto_1
    move v7, v6

    .line 71
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 73
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_10

    .line 79
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 81
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 84
    move-result-object v1

    .line 85
    iget-object v8, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 87
    monitor-enter v8

    .line 88
    :try_start_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v1

    .line 92
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_f

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v9

    .line 102
    check-cast v9, Lcom/android/server/enterprise/auditlog/Admin;

    .line 104
    iget-boolean v10, v9, Lcom/android/server/enterprise/auditlog/Admin;->mIsPseudoAdminOfOrganizationOwnedDevice:Z

    .line 106
    if-eqz v10, :cond_7

    .line 108
    if-eqz p8, :cond_8

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    iget-boolean v10, v9, Lcom/android/server/enterprise/auditlog/Admin;->mIsProfileOwnerOfOrganizationOwnedDevice:Z

    .line 113
    if-eqz v10, :cond_8

    .line 115
    if-ne v7, v6, :cond_8

    .line 117
    if-eqz p8, :cond_8

    .line 119
    :goto_4
    move-object/from16 v10, p8

    .line 121
    goto :goto_5

    .line 122
    :cond_8
    move-object/from16 v10, p7

    .line 124
    :goto_5
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    move-result v11

    .line 128
    if-eqz v11, :cond_9

    .line 130
    goto :goto_3

    .line 131
    :cond_9
    iget v11, v9, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 133
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    .line 136
    move-result v11

    .line 137
    if-eq v7, v6, :cond_d

    .line 139
    if-nez v11, :cond_a

    .line 141
    sget-object v12, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 143
    const-class v13, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 145
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    move-result-object v12

    .line 149
    check-cast v12, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 151
    check-cast v12, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 153
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    invoke-static {v7}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 159
    move-result v12

    .line 160
    if-eqz v12, :cond_d

    .line 162
    :cond_a
    if-ne v11, v7, :cond_b

    .line 164
    if-nez v11, :cond_d

    .line 166
    :cond_b
    iget v11, v9, Lcom/android/server/enterprise/auditlog/Admin;->mUid:I

    .line 168
    invoke-virtual {p0, v7, v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    .line 171
    move-result v11

    .line 172
    if-eqz v11, :cond_c

    .line 174
    goto :goto_6

    .line 175
    :cond_c
    move-object/from16 v12, p6

    .line 177
    goto :goto_3

    .line 178
    :catchall_0
    move-exception v0

    .line 179
    goto/16 :goto_8

    .line 181
    :cond_d
    :goto_6
    iget-object v11, v9, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 183
    invoke-static {v11, v2, v4, v3, v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->filterLoggingMessage(Lcom/samsung/android/knox/log/AuditLogRulesInfo;IZII)Z

    .line 186
    move-result v11

    .line 187
    if-eqz v11, :cond_c

    .line 189
    new-instance v11, Ljava/lang/StringBuilder;

    .line 191
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    new-instance v12, Ljava/util/Date;

    .line 196
    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 199
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    .line 202
    move-result-wide v12

    .line 203
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    const-string v12, " "

    .line 208
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v12, "/"

    .line 216
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v12, "/"

    .line 224
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/4 v12, 0x1

    .line 228
    if-ne v4, v12, :cond_e

    .line 230
    const-string v12, "1"

    .line 232
    goto :goto_7

    .line 233
    :cond_e
    const-string v12, "0"

    .line 235
    :goto_7
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v12, "/"

    .line 240
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v12, "/"

    .line 248
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v12, "/"

    .line 256
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    move-object/from16 v12, p6

    .line 261
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v13, "/"

    .line 266
    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const-string v10, "\n"

    .line 274
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 280
    move-result-object v10

    .line 281
    iget-object v9, v9, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 283
    iget-object v9, v9, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 285
    if-eqz v9, :cond_6

    .line 287
    iget-object v11, v9, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 289
    if-eqz v11, :cond_6

    .line 291
    new-instance v11, Landroid/os/Message;

    .line 293
    invoke-direct {v11}, Landroid/os/Message;-><init>()V

    .line 296
    new-instance v13, Landroid/os/Bundle;

    .line 298
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 301
    const-string/jumbo v14, "log"

    .line 304
    invoke-virtual {v13, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v11, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 310
    iget-object v9, v9, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 312
    invoke-virtual {v9, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 315
    goto/16 :goto_3

    .line 317
    :cond_f
    monitor-exit v8

    .line 318
    goto :goto_9

    .line 319
    :goto_8
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    throw v0

    .line 321
    :cond_10
    :goto_9
    return-void

    .line 322
    :cond_11
    :goto_a
    const-string v0, "AuditLogService"

    .line 324
    const-string v1, "Error: Invalid auditlog parameters!"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void
.end method

.method public final checkAuditLogEnforce()Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mMessagePackage:Ljava/lang/String;

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez v2, :cond_2

    .line 24
    const/16 v2, 0x7cf

    .line 26
    if-ne v0, v2, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 31
    const-string/jumbo v4, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 34
    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 40
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 42
    sget-object v2, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 44
    if-nez v2, :cond_1

    .line 46
    new-instance v2, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 48
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p0, v2, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->mContext:Landroid/content/Context;

    .line 53
    sput-object v2, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 55
    :cond_1
    sget-object p0, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->sInstance:Lcom/android/server/enterprise/common/EnterprisePermissionChecker;

    .line 57
    invoke-virtual {p0}, Lcom/android/server/enterprise/common/EnterprisePermissionChecker;->enforceAuthorization()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    const-string p0, "Caller (uid = "

    .line 63
    const-string v2, ", package = "

    .line 65
    const-string v3, ") does not have Knox audit log permission"

    .line 67
    invoke-static {v0, p0, v2, v1, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    const-string v0, "AuditLogService"

    .line 73
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 p0, 0x0

    .line 77
    return p0

    .line 78
    :cond_2
    :goto_0
    return v3
.end method

.method public final checkOwnContainerOrSelf(II)Z
    .locals 4

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
    check-cast v0, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    .line 31
    move-result v0

    .line 32
    const/4 v1, 0x1

    .line 33
    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 37
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result v2

    .line 51
    if-ne v2, p2, :cond_0

    .line 53
    return v1

    .line 54
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 61
    move-result v0

    .line 62
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 65
    move-result v2

    .line 66
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 69
    move-result v3

    .line 70
    if-ne v0, v2, :cond_1

    .line 72
    if-ne p1, v3, :cond_1

    .line 74
    return v1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    .line 80
    move-result v0

    .line 81
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContainerOwnerCache:Landroid/content/ContentValues;

    .line 83
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {p0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    if-ne v0, p2, :cond_2

    .line 96
    return v1

    .line 97
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    .line 100
    move-result p0

    .line 101
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 104
    move-result v0

    .line 105
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 108
    move-result p2

    .line 109
    if-ne p0, v0, :cond_3

    .line 111
    if-ne p1, p2, :cond_3

    .line 113
    return v1

    .line 114
    :cond_3
    const/4 p0, 0x0

    .line 115
    return p0
.end method

.method public final disableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object v1

    .line 5
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_0

    .line 22
    new-instance v3, Landroid/content/ContentValues;

    .line 24
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string v4, "auditLogEnabled"

    .line 29
    const/4 v5, 0x0

    .line 30
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 33
    move-result-object v6

    .line 34
    invoke-virtual {v3, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v4, Landroid/content/ContentValues;

    .line 39
    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 42
    const-string v6, "adminUid"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v7

    .line 48
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    iget-object v6, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    const-string v7, "AUDITLOG"

    .line 55
    invoke-virtual {v6, v7, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->update(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)I

    .line 58
    move-result v3

    .line 59
    if-lez v3, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 64
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 66
    monitor-enter v0

    .line 67
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 69
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 79
    const-string v3, "AuditLog/isAuditLogEnabled"

    .line 81
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 84
    move-result v4

    .line 85
    invoke-static {v0, v3, v4}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 94
    const-string/jumbo v0, "persist.sys.knox.auditlog"

    .line 97
    const-string/jumbo v3, "false"

    .line 100
    invoke-static {v0, v3}, Lcom/android/server/enterprise/utils/Utils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    move v10, v2

    .line 104
    goto :goto_0

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_1
    move v10, v5

    .line 109
    :goto_0
    if-eqz v10, :cond_2

    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 114
    move-result v5

    .line 115
    const-string v6, "AuditLogService"

    .line 117
    const-string v7, "AuditLog status has changed to disable"

    .line 119
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 122
    move-result v9

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v2, 0x5

    .line 125
    const/4 v3, 0x2

    .line 126
    const/4 v4, 0x1

    .line 127
    move-object v0, p0

    .line 128
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 131
    :cond_2
    return v10
.end method

.method public final declared-synchronized dumpLogFile(Lcom/samsung/android/knox/ContextInfo;JJLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p7, :cond_4

    .line 5
    :try_start_0
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->canDetectErrors()Z

    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_1

    .line 28
    :try_start_1
    const-string v1, "AuditLogService"

    .line 30
    const-string/jumbo v2, "check error"

    .line 33
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->checkError()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_3

    .line 42
    :catch_0
    :try_start_2
    const-string p1, "AuditLogService"

    .line 44
    const-string/jumbo p2, "error checking file descriptor"

    .line 47
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    monitor-exit p0

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_0
    :try_start_3
    new-instance v1, Ljava/lang/SecurityManager;

    .line 54
    invoke-direct {v1}, Ljava/lang/SecurityManager;-><init>()V

    .line 57
    invoke-virtual {p7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkWrite(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 67
    move-result-object p1

    .line 68
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 70
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 76
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 80
    move-object v1, p1

    .line 81
    check-cast v1, Lcom/android/server/enterprise/auditlog/Admin;

    .line 83
    if-eqz v1, :cond_3

    .line 85
    iget-boolean p1, v1, Lcom/android/server/enterprise/auditlog/Admin;->mIsDumping:Z

    .line 87
    if-nez p1, :cond_3

    .line 89
    if-eqz p6, :cond_2

    .line 91
    new-instance p1, Lcom/android/server/enterprise/auditlog/Filter;

    .line 93
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, v1, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 98
    :try_start_5
    invoke-static {p6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 101
    move-result-object p6

    .line 102
    iput-object p6, p1, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;
    :try_end_5
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 104
    goto :goto_1

    .line 105
    :catch_1
    monitor-exit p0

    .line 106
    return v0

    .line 107
    :cond_2
    const/4 p1, 0x0

    .line 108
    :try_start_6
    iput-object p1, v1, Lcom/android/server/enterprise/auditlog/Admin;->mDumpFilter:Lcom/android/server/enterprise/auditlog/Filter;

    .line 110
    :goto_1
    move-object v2, p7

    .line 111
    move-wide v3, p2

    .line 112
    move-wide v5, p4

    .line 113
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/auditlog/Admin;->dump(Landroid/os/ParcelFileDescriptor;JJ)Z

    .line 116
    move-result p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 117
    monitor-exit p0

    .line 118
    return p1

    .line 119
    :cond_3
    monitor-exit p0

    .line 120
    return v0

    .line 121
    :catch_2
    :try_start_7
    const-string p1, "AuditLogService"

    .line 123
    const-string/jumbo p2, "can\'t write to file descriptor"

    .line 126
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 129
    monitor-exit p0

    .line 130
    return v0

    .line 131
    :cond_4
    :goto_2
    :try_start_8
    const-string p1, "AuditLogService"

    .line 133
    const-string/jumbo p2, "invalid output file"

    .line 136
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 139
    monitor-exit p0

    .line 140
    return v0

    .line 141
    :goto_3
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public final enableAuditLog(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 12

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object v1

    .line 5
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    const/4 v0, 0x0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_0

    .line 21
    return v3

    .line 22
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    .line 24
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 27
    const-string v4, "auditLogEnabled"

    .line 29
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 38
    const-string v5, "AUDITLOG"

    .line 40
    invoke-virtual {v4, p1, v0, v5, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    .line 43
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->setAvailableSize(I)J

    .line 47
    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    const-wide/16 v6, 0x0

    .line 50
    cmp-long v6, v4, v6

    .line 52
    if-gez v6, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    move v0, v2

    .line 56
    :goto_0
    if-eqz v0, :cond_2

    .line 58
    :try_start_2
    new-instance v2, Landroid/content/ContentValues;

    .line 60
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 63
    const-string v6, "adminUid"

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 72
    iput-boolean v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 74
    new-instance v2, Lcom/android/server/enterprise/auditlog/Admin;

    .line 76
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    .line 81
    move-result-object v6

    .line 82
    invoke-direct {v2, v3, v6, p1}, Lcom/android/server/enterprise/auditlog/Admin;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getDeviceInfo()Ljava/util/List;

    .line 88
    move-result-object v3

    .line 89
    iput-object v3, v2, Lcom/android/server/enterprise/auditlog/Admin;->mDeviceInfo:Ljava/util/List;

    .line 91
    iget-boolean v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z

    .line 93
    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 99
    move-result-object v3

    .line 100
    iput-object v3, v2, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 102
    iget-object v3, v2, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 104
    iget-object v3, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 106
    iput-wide v4, v3, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 108
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 111
    iget-object v3, v2, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 113
    iget-object v3, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 115
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->createBubbleDir()V

    .line 118
    iget-object v3, v2, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 120
    iget-object v3, v3, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 122
    invoke-virtual {v3}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->getBufferLogSize()J

    .line 125
    move-result-wide v4

    .line 126
    invoke-virtual {v3, v4, v5}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->resizeBubbleFile(J)V

    .line 129
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 131
    monitor-enter v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 132
    :try_start_3
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    move-result-object v5

    .line 138
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    :try_start_4
    const-string/jumbo v2, "persist.sys.knox.auditlog"

    .line 145
    const-string/jumbo v3, "true"

    .line 148
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/Utils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 153
    const-string v3, "AuditLog/isAuditLogEnabled"

    .line 155
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 158
    move-result v4

    .line 159
    invoke-static {v2, v3, v4}, Lcom/android/server/enterprise/utils/SecContentProviderUtil;->notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception v2

    .line 164
    goto :goto_2

    .line 165
    :catchall_0
    move-exception v2

    .line 166
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 167
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 168
    :cond_2
    :goto_1
    move v10, v0

    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception v0

    .line 171
    move v11, v2

    .line 172
    move-object v2, v0

    .line 173
    move v0, v11

    .line 174
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 177
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 180
    move-result-object v3

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getAdminPackageNameForUid(I)Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 185
    invoke-virtual {v3, v2, v4}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 188
    goto :goto_1

    .line 189
    :goto_3
    if-eqz v10, :cond_3

    .line 191
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 194
    move-result v5

    .line 195
    const-string v6, "AuditLogService"

    .line 197
    const-string v7, "AuditLog status has changed to enable"

    .line 199
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 202
    move-result v9

    .line 203
    const/4 v3, 0x2

    .line 204
    const/4 v4, 0x1

    .line 205
    const/4 v2, 0x5

    .line 206
    const/4 v8, 0x0

    .line 207
    move-object v0, p0

    .line 208
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 211
    :cond_3
    return v10
.end method

.method public final enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM$1$1()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    const-string/jumbo v1, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    .line 10
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public final getAdminPackageNameForUid(I)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 7
    if-eq p1, v1, :cond_1

    .line 9
    const/16 v1, 0x2710

    .line 11
    if-lt v0, v1, :cond_0

    .line 13
    const/16 v1, 0x4e1f

    .line 15
    if-le v0, v1, :cond_1

    .line 17
    :cond_0
    const-string/jumbo p0, "com.sec.enterprise.knox.cloudmdm.smdms"

    .line 20
    return-object p0

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getPackageNameForUid(I)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    :cond_2
    return-object v0
.end method

.method public final getAuditLogRules(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object p0, v0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 23
    return-object p0

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method public final getCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 7
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 25
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 27
    float-to-int p0, p0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final getCurrentLogFileSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 7
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    if-eqz p0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 25
    iget-wide v0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCircularBufferSize:J

    .line 27
    const-wide/16 v2, 0x64

    .line 29
    mul-long/2addr v0, v2

    .line 30
    iget-wide p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mBufferLimitSize:J

    .line 32
    div-long/2addr v0, p0

    .line 33
    long-to-int p0, v0

    .line 34
    const/16 p1, 0x64

    .line 36
    if-le p0, p1, :cond_0

    .line 38
    move p0, p1

    .line 39
    :cond_0
    return p0

    .line 40
    :cond_1
    const/4 p0, 0x0

    .line 41
    return p0
.end method

.method public final getDeviceInfo()Ljava/util/List;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->getEDM$1$1()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getDeviceInventory()Lcom/samsung/android/knox/deviceinfo/DeviceInventory;

    .line 8
    move-result-object p0

    .line 9
    const-string v0, " -----------------------------------------\n"

    .line 11
    invoke-static {v0}, Landroid/hardware/usb/V1_1/PortStatus_1_1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    const-string v3, "OEM: "

    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    const-string v3, "DEVICE: "

    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    const-string v3, "PLATFORM: "

    .line 57
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 74
    const-string v3, "OS: "

    .line 76
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOS()Ljava/lang/String;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    const-string v3, "OS VERSION: "

    .line 97
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/knox/deviceinfo/DeviceInventory;->getDeviceOSVersion()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p0

    .line 111
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 118
    if-eqz p0, :cond_0

    .line 120
    const-string v2, "BASEBAND: "

    .line 122
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "DEVICE ID: "

    .line 133
    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v2, ""

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 141
    move-result-wide v3

    .line 142
    const/4 v5, 0x0

    .line 143
    :try_start_0
    const-string/jumbo v6, "ril.serialnumber"

    .line 146
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    move-result-object v6

    .line 150
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 153
    move-result v7

    .line 154
    if-nez v7, :cond_2

    .line 156
    const-string v7, "00000000000"

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result v7

    .line 162
    if-eqz v7, :cond_1

    .line 164
    goto :goto_0

    .line 165
    :cond_1
    move-object v5, v6

    .line 166
    goto :goto_1

    .line 167
    :catchall_0
    move-exception p0

    .line 168
    goto :goto_3

    .line 169
    :cond_2
    :goto_0
    const-string/jumbo v6, "ro.boot.serialno"

    .line 172
    invoke-static {v6, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    move-result-object v2

    .line 176
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v6, :cond_3

    .line 182
    goto :goto_1

    .line 183
    :cond_3
    move-object v5, v2

    .line 184
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    goto :goto_2

    .line 188
    :catch_0
    :try_start_1
    const-string v2, "AuditLogService"

    .line 190
    const-string/jumbo v6, "could not get property"

    .line 193
    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    goto :goto_1

    .line 197
    :goto_2
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v1

    .line 211
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    throw p0
.end method

.method public final getEDM$1$1()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 15
    return-object p0
.end method

.method public final getMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 7
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 23
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 25
    iget p0, p0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 27
    float-to-int p0, p0

    .line 28
    return p0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    return p0
.end method

.method public final getRulesInfoFromDB(I)Lcom/samsung/android/knox/log/AuditLogRulesInfo;
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 3
    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>()V

    .line 6
    new-instance v1, Landroid/content/ContentValues;

    .line 8
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p1

    .line 15
    const-string v2, "adminUid"

    .line 17
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 20
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 22
    const-string p1, "AUDITLOG"

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 38
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/content/ContentValues;

    .line 44
    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->extractRulesFromCv(Landroid/content/ContentValues;)Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 47
    move-result-object v0

    .line 48
    :cond_0
    return-object v0
.end method

.method public final isAuditLogEnabled(Lcom/samsung/android/knox/ContextInfo;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object p1

    .line 5
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public final isAuditLogEnabledAsUser(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_4

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Integer;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v1

    .line 27
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    move-result v2

    .line 31
    const/4 v3, -0x1

    .line 32
    const/4 v4, 0x1

    .line 33
    if-ne p1, v3, :cond_1

    .line 35
    return v4

    .line 36
    :cond_1
    sget-object v3, Lcom/android/server/enterprise/adapter/AdapterRegistry;->mAdapterHandles:Ljava/util/HashMap;

    .line 38
    const-class v5, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 40
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    .line 46
    check-cast v3, Lcom/android/server/enterprise/adapterlayer/PersonaManagerAdapter;

    .line 48
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_3

    .line 57
    if-eqz v2, :cond_2

    .line 59
    if-ne v2, p1, :cond_0

    .line 61
    :cond_2
    return v4

    .line 62
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkOwnContainerOrSelf(II)Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_0

    .line 68
    return v4

    .line 69
    :cond_4
    const/4 p0, 0x0

    .line 70
    return p0
.end method

.method public final isAuditServiceRunning()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public final logEventAsUser(Ljava/lang/String;IIILjava/util/List;)V
    .locals 19

    .line 1
    move-object/from16 v1, p1

    .line 3
    move/from16 v2, p4

    .line 5
    move-object/from16 v3, p0

    .line 7
    move-object/from16 v13, p5

    .line 9
    iget-object v4, v3, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 11
    sget-object v0, Lcom/android/server/enterprise/auditlog/eventsdata/EventDataMap;->EVENT_MAP:Ljava/util/Map;

    .line 13
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v5

    .line 17
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    move-object v5, v0

    .line 22
    check-cast v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;

    .line 24
    const-string v14, "SecurityLog"

    .line 26
    const/4 v15, 0x1

    .line 27
    const/4 v12, 0x2

    .line 28
    if-nez v5, :cond_0

    .line 30
    const/4 v5, 0x0

    .line 31
    goto/16 :goto_12

    .line 33
    :cond_0
    iget-object v7, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 35
    iget-object v0, v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    .line 37
    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v0

    .line 41
    iget-object v8, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 43
    iget v9, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    .line 45
    const/4 v10, -0x1

    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v6, 0x3

    .line 48
    if-eqz v9, :cond_3

    .line 50
    if-eq v9, v15, :cond_2

    .line 52
    if-eq v9, v12, :cond_3

    .line 54
    if-eq v9, v6, :cond_1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    iput v11, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    iput v10, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    if-nez v0, :cond_4

    .line 65
    move/from16 v0, p2

    .line 67
    iput v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 69
    goto :goto_0

    .line 70
    :cond_4
    sparse-switch v2, :sswitch_data_0

    .line 73
    const-string/jumbo v0, "why this security log is marked as private? "

    .line 76
    const-string v9, "EventPrivacy"

    .line 78
    invoke-static {v2, v0, v9}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    goto :goto_0

    .line 82
    :sswitch_0
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Ljava/lang/String;

    .line 88
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/String;)I

    .line 91
    move-result v0

    .line 92
    iput v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 94
    goto :goto_0

    .line 95
    :sswitch_1
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/String;)I

    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 108
    move-result v0

    .line 109
    iput v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 111
    goto :goto_0

    .line 112
    :sswitch_2
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/String;)I

    .line 121
    move-result v0

    .line 122
    iput v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 124
    goto :goto_0

    .line 125
    :sswitch_3
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 131
    invoke-static {v0}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->parseInteger(Ljava/lang/String;)I

    .line 134
    move-result v0

    .line 135
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 138
    move-result v0

    .line 139
    iput v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 141
    :goto_0
    iget-object v9, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 143
    iget-object v0, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->defaultMessage:Ljava/lang/String;

    .line 145
    iget v10, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    .line 147
    if-eq v15, v10, :cond_5

    .line 149
    if-ne v12, v10, :cond_6

    .line 151
    :cond_5
    const/4 v10, 0x0

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    const-string v10, "%[0-9]*\\.?[0-9]*[a-zA-Z]"

    .line 155
    const-string v11, "[redacted]"

    .line 157
    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 160
    move-result-object v0

    .line 161
    iput-object v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    .line 163
    goto :goto_2

    .line 164
    :goto_1
    iput-object v10, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    .line 166
    :goto_2
    iget-object v8, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 168
    iget v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcomeType:I

    .line 170
    const-string v10, "Failed to parse integer"

    .line 172
    const-string v11, "Unknown tag - "

    .line 174
    if-eqz v0, :cond_e

    .line 176
    if-eq v0, v15, :cond_d

    .line 178
    const-string v6, "EventOutcome"

    .line 180
    if-eq v0, v12, :cond_7

    .line 182
    const-string v0, "Unknown outcome"

    .line 184
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    goto/16 :goto_a

    .line 189
    :cond_7
    sparse-switch v2, :sswitch_data_1

    .line 192
    invoke-static {v2, v11, v6}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    goto/16 :goto_a

    .line 197
    :sswitch_4
    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 200
    move-result-object v0

    .line 201
    check-cast v0, Ljava/lang/String;

    .line 203
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    move-result v18

    .line 207
    if-eqz v18, :cond_8

    .line 209
    :goto_3
    move v0, v15

    .line 210
    goto :goto_4

    .line 211
    :cond_8
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 214
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_4

    .line 216
    :catch_0
    move-exception v0

    .line 217
    move-object v12, v0

    .line 218
    invoke-static {v6, v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    goto :goto_3

    .line 222
    :goto_4
    if-ne v0, v15, :cond_9

    .line 224
    move v0, v15

    .line 225
    goto :goto_5

    .line 226
    :cond_9
    const/4 v0, 0x0

    .line 227
    :goto_5
    iput-boolean v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 229
    goto :goto_a

    .line 230
    :sswitch_5
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    .line 233
    move-result v0

    .line 234
    const/4 v12, 0x3

    .line 235
    if-ge v0, v12, :cond_a

    .line 237
    move v0, v15

    .line 238
    goto :goto_6

    .line 239
    :cond_a
    const/4 v0, 0x0

    .line 240
    :goto_6
    iput-boolean v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 242
    goto :goto_a

    .line 243
    :sswitch_6
    const/4 v12, 0x0

    .line 244
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 247
    move-result-object v0

    .line 248
    check-cast v0, Ljava/lang/String;

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    move-result v12

    .line 254
    if-eqz v12, :cond_b

    .line 256
    :goto_7
    move v0, v15

    .line 257
    goto :goto_8

    .line 258
    :cond_b
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 261
    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 262
    goto :goto_8

    .line 263
    :catch_1
    move-exception v0

    .line 264
    move-object v12, v0

    .line 265
    invoke-static {v6, v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    goto :goto_7

    .line 269
    :goto_8
    if-ne v0, v15, :cond_c

    .line 271
    move v0, v15

    .line 272
    goto :goto_9

    .line 273
    :cond_c
    const/4 v0, 0x0

    .line 274
    :goto_9
    iput-boolean v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 276
    goto :goto_a

    .line 277
    :cond_d
    const/4 v6, 0x0

    .line 278
    iput-boolean v6, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 280
    goto :goto_a

    .line 281
    :cond_e
    iput-boolean v15, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 283
    :goto_a
    iget-boolean v0, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 285
    iget-object v6, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 287
    iget v8, v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severityType:I

    .line 289
    const-string v12, "EventSeverity"

    .line 291
    packed-switch v8, :pswitch_data_0

    .line 294
    const-string v0, "Unknown severity"

    .line 296
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    goto :goto_d

    .line 300
    :pswitch_0
    const/4 v8, 0x5

    .line 301
    sparse-switch v2, :sswitch_data_2

    .line 304
    invoke-static {v2, v11, v12}, Lcom/android/server/NetworkScorerAppManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 307
    goto :goto_d

    .line 308
    :sswitch_7
    if-eqz v0, :cond_f

    .line 310
    goto :goto_b

    .line 311
    :cond_f
    const/4 v8, 0x3

    .line 312
    :goto_b
    iput v8, v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    .line 314
    goto :goto_d

    .line 315
    :sswitch_8
    if-eqz v0, :cond_10

    .line 317
    goto :goto_c

    .line 318
    :cond_10
    const/4 v8, 0x4

    .line 319
    :goto_c
    iput v8, v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    .line 321
    goto :goto_d

    .line 322
    :pswitch_1
    iput v8, v6, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    .line 324
    :goto_d
    iget-object v0, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->defaultMessage:Ljava/lang/String;

    .line 326
    iput-object v0, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 328
    iget v0, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->formatType:I

    .line 330
    if-eqz v0, :cond_13

    .line 332
    const-string v6, "EventMessage"

    .line 334
    const/4 v8, 0x2

    .line 335
    if-eq v0, v8, :cond_11

    .line 337
    const-string v0, "Unknown formatType"

    .line 339
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v12, 0x2

    .line 343
    goto :goto_10

    .line 344
    :cond_11
    invoke-virtual {v9, v13}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->buildLogMessage(Ljava/util/List;)V

    .line 347
    const-string v0, "(^Admin) ([0-9]+) (.*$)"

    .line 349
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 352
    move-result-object v0

    .line 353
    iget-object v8, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 355
    invoke-virtual {v0, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 358
    move-result-object v8

    .line 359
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 362
    move-result v0

    .line 363
    const/4 v12, 0x2

    .line 364
    if-eqz v0, :cond_14

    .line 366
    invoke-virtual {v8, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 369
    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    move-result v11

    .line 374
    if-eqz v11, :cond_12

    .line 376
    :goto_e
    const/4 v10, -0x1

    .line 377
    goto :goto_f

    .line 378
    :cond_12
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 381
    move-result v10
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 382
    goto :goto_f

    .line 383
    :catch_2
    move-exception v0

    .line 384
    move-object v11, v0

    .line 385
    invoke-static {v6, v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    goto :goto_e

    .line 389
    :goto_f
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 392
    move-result-object v0

    .line 393
    invoke-static {v10}, Landroid/os/UserHandle;->getAppId(I)I

    .line 396
    move-result v4

    .line 397
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 400
    move-result-object v0

    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    .line 403
    const-string v6, "$1 "

    .line 405
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    const-string v6, " $3"

    .line 413
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    move-result-object v4

    .line 420
    invoke-virtual {v8, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 423
    move-result-object v4

    .line 424
    iput-object v4, v9, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 426
    const/4 v4, 0x0

    .line 427
    invoke-interface {v13, v4, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 430
    goto :goto_10

    .line 431
    :cond_13
    const/4 v12, 0x2

    .line 432
    invoke-virtual {v9, v13}, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->buildLogMessage(Ljava/util/List;)V

    .line 435
    :cond_14
    :goto_10
    iget v0, v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->componentMode:I

    .line 437
    if-nez v0, :cond_15

    .line 439
    goto :goto_12

    .line 440
    :cond_15
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 443
    move-result v0

    .line 444
    if-nez v0, :cond_1e

    .line 446
    const/4 v4, 0x0

    .line 447
    iput-object v4, v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    .line 449
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 452
    const-string v0, "DevicePolicyManager"

    .line 454
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 457
    move-result v0

    .line 458
    if-nez v0, :cond_17

    .line 460
    const-string v0, "RecoverySystem"

    .line 462
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_16

    .line 468
    goto :goto_11

    .line 469
    :cond_16
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 471
    const-string v2, "Component name: "

    .line 473
    const-string v3, " not found, hence aborting..."

    .line 475
    invoke-static {v2, v1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 478
    move-result-object v1

    .line 479
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 482
    throw v0

    .line 483
    :cond_17
    :goto_11
    iput-object v1, v7, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    .line 485
    :goto_12
    const-string v1, "AuditLogService"

    .line 487
    if-nez v5, :cond_18

    .line 489
    const-string v0, "Audit log event tag not mapped"

    .line 491
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void

    .line 495
    :cond_18
    iget-object v0, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->severity:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;

    .line 497
    iget v0, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventSeverity;->severity:I

    .line 499
    iget-object v4, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->group:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;

    .line 501
    iget v6, v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventGroup;->group:I

    .line 503
    iget-object v4, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->outcome:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;

    .line 505
    iget-boolean v7, v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventOutcome;->outcome:Z

    .line 507
    iget-object v11, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->component:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;

    .line 509
    iget-object v9, v11, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    .line 511
    iget-object v4, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->message:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;

    .line 513
    iget-object v10, v4, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventMessage;->message:Ljava/lang/String;

    .line 515
    iget-object v8, v5, Lcom/android/server/enterprise/auditlog/eventsdata/EventData;->privacy:Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;

    .line 517
    iget-object v5, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->redactedMessage:Ljava/lang/String;

    .line 519
    iget v4, v8, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 521
    const/16 v16, 0x0

    .line 523
    move-object/from16 v3, p0

    .line 525
    move/from16 v17, v4

    .line 527
    move-object/from16 v4, v16

    .line 529
    move-object/from16 v16, v5

    .line 531
    move v5, v0

    .line 532
    move-object v0, v8

    .line 533
    move/from16 v8, p3

    .line 535
    move-object v15, v11

    .line 536
    move-object/from16 v11, v16

    .line 538
    move/from16 v16, v12

    .line 540
    move/from16 v12, v17

    .line 542
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 545
    move-result v3

    .line 546
    if-eqz v3, :cond_1d

    .line 548
    iget v3, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->userId:I

    .line 550
    iget-object v4, v15, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventComponent;->component:Ljava/lang/String;

    .line 552
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    move-result v4

    .line 556
    const-string v5, "KnoxZtService is null - eventTag: "

    .line 558
    if-eqz v4, :cond_19

    .line 560
    move/from16 v15, v16

    .line 562
    goto :goto_13

    .line 563
    :cond_19
    const/4 v15, 0x1

    .line 564
    :goto_13
    new-instance v4, Landroid/os/Bundle;

    .line 566
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 569
    const-string/jumbo v6, "params"

    .line 572
    move-object v7, v13

    .line 573
    check-cast v7, Ljava/util/ArrayList;

    .line 575
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 578
    const-string/jumbo v6, "user_id"

    .line 581
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 584
    const-string/jumbo v3, "privacy"

    .line 587
    iget v0, v0, Lcom/android/server/enterprise/auditlog/eventsdata/types/EventPrivacy;->privacy:I

    .line 589
    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 592
    new-instance v0, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;

    .line 594
    invoke-direct {v0, v15, v2, v4}, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;-><init>(IILandroid/os/Bundle;)V

    .line 597
    sget-object v3, Lcom/android/server/enterprise/auditlog/zt/ZtEventDataCache;->ZT_EVENT_CACHE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 599
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 602
    move-result v4

    .line 603
    const/16 v6, 0x7d0

    .line 605
    if-ne v4, v6, :cond_1a

    .line 607
    const-string v4, "ZtEventDataCache"

    .line 609
    const-string v6, "KnoxZt event cache is full, removing oldest event..."

    .line 611
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 617
    :cond_1a
    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 623
    move-result-wide v3

    .line 624
    :try_start_3
    const-string/jumbo v0, "knoxztinternal"

    .line 627
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 630
    move-result-object v0

    .line 631
    invoke-static {v0}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;

    .line 634
    move-result-object v0

    .line 635
    if-nez v0, :cond_1b

    .line 637
    invoke-static {}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isBuildUserShip()Z

    .line 640
    move-result v0

    .line 641
    if-nez v0, :cond_1c

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    .line 645
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 651
    const-string v2, " added to cache."

    .line 653
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    move-result-object v0

    .line 660
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    goto :goto_15

    .line 664
    :catchall_0
    move-exception v0

    .line 665
    goto :goto_16

    .line 666
    :cond_1b
    :goto_14
    sget-object v2, Lcom/android/server/enterprise/auditlog/zt/ZtEventDataCache;->ZT_EVENT_CACHE:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 668
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 671
    move-result-object v2

    .line 672
    check-cast v2, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 674
    if-eqz v2, :cond_1c

    .line 676
    iget v5, v2, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->tag:I

    .line 678
    :try_start_4
    iget v6, v2, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->source:I

    .line 680
    iget-object v2, v2, Lcom/android/server/enterprise/auditlog/zt/ZtEvent;->bundle:Landroid/os/Bundle;

    .line 682
    invoke-interface {v0, v6, v5, v2}, Lcom/samsung/android/knox/zt/internal/IKnoxZtInternalService;->notifyFrameworkEvent(IILandroid/os/Bundle;)V

    .line 685
    invoke-static {}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isBuildUserShip()Z

    .line 688
    move-result v2

    .line 689
    if-nez v2, :cond_1b

    .line 691
    new-instance v2, Ljava/lang/StringBuilder;

    .line 693
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 696
    const-string v6, "Sending KnoxZt event: "

    .line 698
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 707
    move-result-object v2

    .line 708
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 711
    goto :goto_14

    .line 712
    :cond_1c
    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    goto :goto_17

    .line 716
    :goto_16
    :try_start_5
    const-string v2, "Failed to bind Knox ZT Service"

    .line 718
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 721
    goto :goto_15

    .line 722
    :catchall_1
    move-exception v0

    .line 723
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 726
    throw v0

    .line 727
    :cond_1d
    const-string v0, "Caller is not allowed to log audit / zt messages!"

    .line 729
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :goto_17
    return-void

    .line 733
    :cond_1e
    new-instance v0, Ljava/security/InvalidParameterException;

    .line 735
    const-string v1, "Component name null or empty, aborting..."

    .line 737
    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    .line 740
    throw v0

    .line 741
    :sswitch_data_0
    .sparse-switch
        0x33455 -> :sswitch_3
        0x33468 -> :sswitch_3
        0x33469 -> :sswitch_3
        0x3346a -> :sswitch_3
        0x3346d -> :sswitch_2
        0x3346e -> :sswitch_2
        0x33470 -> :sswitch_1
        0x33474 -> :sswitch_0
        0x33479 -> :sswitch_2
        0x3347a -> :sswitch_2
        0x3347b -> :sswitch_2
    .end sparse-switch

    .line 787
    :sswitch_data_1
    .sparse-switch
        0x33457 -> :sswitch_6
        0x33468 -> :sswitch_6
        0x33469 -> :sswitch_6
        0x3346a -> :sswitch_6
        0x3346d -> :sswitch_6
        0x3346e -> :sswitch_6
        0x3346f -> :sswitch_6
        0x33475 -> :sswitch_5
        0x33477 -> :sswitch_4
    .end sparse-switch

    .line 825
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 841
    :sswitch_data_2
    .sparse-switch
        0x33457 -> :sswitch_8
        0x33468 -> :sswitch_8
        0x33469 -> :sswitch_8
        0x3346a -> :sswitch_8
        0x3346d -> :sswitch_8
        0x3346e -> :sswitch_7
        0x3346f -> :sswitch_7
        0x33477 -> :sswitch_7
    .end sparse-switch
.end method

.method public final notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    .line 1
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
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p0, v0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 30
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 32
    iget-object v1, p1, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 34
    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    .line 42
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw p0

    .line 49
    :cond_0
    :goto_0
    return-void
.end method

.method public final onPreAdminRemoval(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    iget-object p1, v0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 30
    iget-object v1, p1, Lcom/android/server/enterprise/auditlog/LogWritter;->mLooperThread:Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;

    .line 32
    iget-object v2, v1, Lcom/android/server/enterprise/auditlog/LogWritter$LooperThread;->mHandler:Lcom/android/server/enterprise/auditlog/LogWritter$SaveLogHandler;

    .line 34
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 37
    iget-object p1, p1, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 39
    invoke-virtual {p1}, Lcom/android/server/enterprise/auditlog/CircularBuffer;->closeFile()V

    .line 42
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->deleteAllFiles()V

    .line 45
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditServiceRunning()Z

    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_0

    .line 51
    const-string/jumbo p0, "persist.sys.knox.auditlog"

    .line 54
    const-string/jumbo p1, "false"

    .line 57
    invoke-static {p0, p1}, Lcom/android/server/enterprise/utils/Utils;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    throw p0

    .line 64
    :cond_0
    :goto_0
    return-void
.end method

.method public final redactedAuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v10, -0x1

    .line 8
    move-object v1, p0

    .line 9
    move-object v2, p1

    .line 10
    move v3, p2

    .line 11
    move v4, p3

    .line 12
    move v5, p4

    .line 13
    move/from16 v6, p5

    .line 15
    move-object/from16 v7, p6

    .line 17
    move-object/from16 v8, p7

    .line 19
    move-object/from16 v9, p8

    .line 21
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 24
    :cond_0
    return-void
.end method

.method public final redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->checkAuditLogEnforce()Z

    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_1

    .line 8
    iget-object v1, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mPattern:Ljava/util/regex/Pattern;

    .line 10
    move-object/from16 v2, p7

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 22
    const/4 v2, 0x2

    .line 23
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v2

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    const-string v4, "$1 "

    .line 35
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v4, v0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mContext:Landroid/content/Context;

    .line 40
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 43
    move-result-object v4

    .line 44
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 47
    move-result v2

    .line 48
    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v2, " $3"

    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    move-object v7, v1

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    move-object v7, v2

    .line 71
    :goto_0
    move-object v0, p0

    .line 72
    move-object v1, p1

    .line 73
    move v2, p2

    .line 74
    move v3, p3

    .line 75
    move v4, p4

    .line 76
    move v5, p5

    .line 77
    move-object/from16 v6, p6

    .line 79
    move-object/from16 v8, p8

    .line 81
    move/from16 v9, p9

    .line 83
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->auditLoggerInternal(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 86
    const/4 v0, 0x1

    .line 87
    return v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    .line 89
    return v0
.end method

.method public final setAuditLogRules(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/log/AuditLogRulesInfo;)Z
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 4
    move-result-object v1

    .line 5
    iget p1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 7
    if-nez p2, :cond_0

    .line 9
    goto/16 :goto_3

    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x5

    .line 16
    if-gt v0, v2, :cond_a

    .line 18
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    .line 21
    move-result v0

    .line 22
    const/4 v2, 0x1

    .line 23
    if-ge v0, v2, :cond_1

    .line 25
    goto/16 :goto_3

    .line 27
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 30
    move-result v0

    .line 31
    if-ltz v0, :cond_a

    .line 33
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 36
    move-result v0

    .line 37
    const/4 v3, 0x2

    .line 38
    if-le v0, v3, :cond_2

    .line 40
    goto/16 :goto_3

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 54
    new-instance v3, Landroid/content/ContentValues;

    .line 56
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 59
    if-eqz v0, :cond_3

    .line 61
    const-string v4, "auditLogEnabled"

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 78
    move-result-object v4

    .line 79
    const-string v5, ","

    .line 81
    if-eqz v4, :cond_4

    .line 83
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 86
    move-result-object v4

    .line 87
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 90
    move-result v4

    .line 91
    if-nez v4, :cond_4

    .line 93
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getGroupsRule()Ljava/util/List;

    .line 96
    move-result-object v4

    .line 97
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v4

    .line 101
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v6

    .line 105
    if-eqz v6, :cond_4

    .line 107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/Integer;

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 138
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 144
    move-result-object v6

    .line 145
    if-eqz v6, :cond_5

    .line 147
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 150
    move-result-object v6

    .line 151
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    .line 154
    move-result v6

    .line 155
    if-nez v6, :cond_5

    .line 157
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getUsersRule()Ljava/util/List;

    .line 160
    move-result-object v6

    .line 161
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v6

    .line 165
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v7

    .line 169
    if-eqz v7, :cond_5

    .line 171
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Ljava/lang/Integer;

    .line 177
    new-instance v8, Ljava/lang/StringBuilder;

    .line 179
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 185
    move-result-object v7

    .line 186
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v7

    .line 196
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    goto :goto_1

    .line 200
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getOutcomeRule()I

    .line 203
    move-result v5

    .line 204
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 207
    move-result-object v5

    .line 208
    const-string v6, "auditLogRuleOutcome"

    .line 210
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    invoke-virtual {p2}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->getSeverityRule()I

    .line 216
    move-result v5

    .line 217
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 220
    move-result-object v5

    .line 221
    const-string v6, "auditLogRuleSeverity"

    .line 223
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v5, "auditLogRuleGroups"

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string v2, "auditLogRuleUsers"

    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object v4

    .line 241
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v2, Landroid/content/ContentValues;

    .line 246
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 249
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 252
    move-result-object v4

    .line 253
    const-string v5, "adminUid"

    .line 255
    invoke-virtual {v2, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 258
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 260
    const-string v5, "AUDITLOG"

    .line 262
    invoke-virtual {v4, v5, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 265
    move-result v10

    .line 266
    if-nez v10, :cond_7

    .line 268
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 271
    move-result-object v2

    .line 272
    if-eqz v0, :cond_6

    .line 274
    iget-object v3, v0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 276
    goto :goto_2

    .line 277
    :cond_6
    const-string v3, ""

    .line 279
    :goto_2
    const-string v4, "Cannot set filter on Database"

    .line 281
    invoke-virtual {v2, v4, v3}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_7
    if-eqz v0, :cond_8

    .line 286
    iput-object p2, v0, Lcom/android/server/enterprise/auditlog/Admin;->mAuditLogRulesInfo:Lcom/samsung/android/knox/log/AuditLogRulesInfo;

    .line 288
    :cond_8
    if-eqz v10, :cond_9

    .line 290
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 293
    move-result v5

    .line 294
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 297
    move-result v9

    .line 298
    const/4 v8, 0x0

    .line 299
    const/4 v2, 0x5

    .line 300
    const/4 v3, 0x2

    .line 301
    const/4 v4, 0x1

    .line 302
    const-string v6, "AuditLogService"

    .line 304
    const-string v7, "AuditLog filter rules has changed."

    .line 306
    move-object v0, p0

    .line 307
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 310
    :cond_9
    return v10

    .line 311
    :cond_a
    :goto_3
    const/4 p0, 0x0

    .line 312
    return p0
.end method

.method public final setAvailableSize(I)J
    .locals 11

    .line 1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/StatFs;

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    .line 17
    move-result v0

    .line 18
    int-to-long v2, v0

    .line 19
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    mul-long/2addr v0, v2

    .line 25
    const-wide/16 v2, 0x5

    .line 27
    mul-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x64

    .line 30
    div-long/2addr v0, v2

    .line 31
    const-wide/32 v2, 0xa00000

    .line 34
    cmp-long v2, v0, v2

    .line 36
    const-wide/32 v3, 0x3200000

    .line 39
    if-ltz v2, :cond_0

    .line 41
    cmp-long v2, v0, v3

    .line 43
    if-gtz v2, :cond_0

    .line 45
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 47
    const-string v6, "AUDITLOG"

    .line 49
    const-string v9, "auditLogBufferSize"

    .line 51
    move v5, p1

    .line 52
    move-wide v7, v0

    .line 53
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;JLjava/lang/String;)Z

    .line 56
    move-result p0

    .line 57
    if-eqz p0, :cond_1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    cmp-long v0, v0, v3

    .line 62
    if-ltz v0, :cond_1

    .line 64
    iget-object v5, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 66
    const-string v10, "auditLogBufferSize"

    .line 68
    const-wide/32 v8, 0x3200000

    .line 71
    const-string v7, "AUDITLOG"

    .line 73
    move v6, p1

    .line 74
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putLong(ILjava/lang/String;JLjava/lang/String;)Z

    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_1

    .line 80
    move-wide v0, v3

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    const-wide/16 v0, -0x1

    .line 84
    :goto_0
    return-wide v0
.end method

.method public final setCriticalLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt p2, v0, :cond_3

    .line 5
    const/16 v0, 0x63

    .line 7
    if-le p2, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    move-result-object v3

    .line 14
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string v8, "AUDITLOG"

    .line 34
    const-string v9, "auditCriticalSize"

    .line 36
    const/4 v6, 0x0

    .line 37
    move v5, p1

    .line 38
    move v7, p2

    .line 39
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 48
    move-result-object v4

    .line 49
    const-string v5, "Cannot set critcal log size on Databank"

    .line 51
    iget-object v6, v0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    int-to-float v4, p2

    .line 57
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 59
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 61
    iput v4, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminCriticalSize:F

    .line 63
    iput-boolean v1, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mCriticalIntent:Z

    .line 65
    move v1, v2

    .line 66
    :cond_2
    if-eqz v1, :cond_3

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 71
    move-result v7

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p2

    .line 76
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    const-string v0, "AuditLog critical size has changed to %d"

    .line 82
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v9

    .line 86
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    move-result v11

    .line 90
    const/4 v6, 0x1

    .line 91
    const-string v8, "AuditLogService"

    .line 93
    const/4 v4, 0x5

    .line 94
    const/4 v5, 0x2

    .line 95
    const/4 v10, 0x0

    .line 96
    move-object v2, p0

    .line 97
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 100
    :cond_3
    :goto_0
    return v1
.end method

.method public final setMaximumLogSize(Lcom/samsung/android/knox/ContextInfo;I)Z
    .locals 12

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-lt p2, v0, :cond_3

    .line 5
    const/16 v0, 0x63

    .line 7
    if-le p2, v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->enforceAuditLogPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    .line 13
    move-result-object v3

    .line 14
    iget p1, v3, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;

    .line 18
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 28
    if-eqz v0, :cond_2

    .line 30
    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/AuditLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 32
    const-string v8, "AUDITLOG"

    .line 34
    const-string v9, "auditMaximumSize"

    .line 36
    const/4 v6, 0x0

    .line 37
    move v5, p1

    .line 38
    move v7, p2

    .line 39
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putInt(IIILjava/lang/String;Ljava/lang/String;)Z

    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    invoke-static {}, Lcom/android/server/enterprise/auditlog/InformFailure;->getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 48
    move-result-object v4

    .line 49
    const-string v5, "Cannot set maximum log size on databank"

    .line 51
    iget-object v6, v0, Lcom/android/server/enterprise/auditlog/Admin;->mPackageName:Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/auditlog/InformFailure;->broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    int-to-float v4, p2

    .line 57
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/Admin;->mLogWritter:Lcom/android/server/enterprise/auditlog/LogWritter;

    .line 59
    iget-object v0, v0, Lcom/android/server/enterprise/auditlog/LogWritter;->mCircularBuffer:Lcom/android/server/enterprise/auditlog/CircularBuffer;

    .line 61
    iput v4, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mAdminMaximumSize:F

    .line 63
    iput-boolean v1, v0, Lcom/android/server/enterprise/auditlog/CircularBuffer;->mMaximumIntent:Z

    .line 65
    move v1, v2

    .line 66
    :cond_2
    if-eqz v1, :cond_3

    .line 68
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 71
    move-result v7

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p2

    .line 76
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 79
    move-result-object p2

    .line 80
    const-string v0, "AuditLog maximum size has changed to %d"

    .line 82
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    move-result-object v9

    .line 86
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 89
    move-result v11

    .line 90
    const/4 v6, 0x1

    .line 91
    const-string v8, "AuditLogService"

    .line 93
    const/4 v4, 0x5

    .line 94
    const/4 v5, 0x2

    .line 95
    const/4 v10, 0x0

    .line 96
    move-object v2, p0

    .line 97
    invoke-virtual/range {v2 .. v11}, Lcom/android/server/enterprise/auditlog/AuditLogService;->redactedAuditLoggerAsUser(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 100
    :cond_3
    :goto_0
    return v1
.end method

.method public final systemReady()V
    .locals 0

    .line 1
    return-void
.end method
