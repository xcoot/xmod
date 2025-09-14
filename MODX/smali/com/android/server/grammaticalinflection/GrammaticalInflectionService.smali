.class public final Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

.field public final mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mGrammaticalGenderCache:Landroid/util/SparseIntArray;

.field public final mLock:Ljava/lang/Object;

.field public final mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mPermissionManager:Landroid/permission/PermissionManager;


# direct methods
.method public static -$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0x3e8

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    const/16 v1, 0x7d0

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    .line 20
    const-string v0, "android.permission.CHANGE_CONFIGURATION"

    .line 22
    const-string v1, "Caller must be system, shell, root or hold CHANGE_CONFIGURATION permission."

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 18
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mContext:Landroid/content/Context;

    .line 20
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 22
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 28
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 30
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 32
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 38
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 40
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 48
    move-result-object v1

    .line 49
    invoke-direct {v0, p0, v1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Landroid/content/pm/PackageManager;)V

    .line 52
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    .line 54
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    .line 56
    invoke-direct {v0, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 59
    iput-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    .line 61
    const-class v0, Landroid/permission/PermissionManager;

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Landroid/permission/PermissionManager;

    .line 69
    iput-object p1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPermissionManager:Landroid/permission/PermissionManager;

    .line 71
    return-void
.end method

.method public static checkSystemTermsOfAddressIsEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/app/Flags;->systemTermsOfAddressEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string v0, "GrammaticalInflection"

    .line 9
    const-string v1, "The flag must be enabled to allow calling the API."

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public static toXmlByteArray(ILjava/io/FileOutputStream;)[B
    .locals 4

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 9
    move-result-object p1

    .line 10
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 12
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 19
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    const-string/jumbo v1, "grammatical_inflection"

    .line 28
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    const-string/jumbo v3, "grammatical_gender"

    .line 34
    invoke-interface {p1, v2, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 40
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static updateConfiguration(II)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    .line 3
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 6
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getGrammaticalGender()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, p0}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    .line 13
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2, v0}, Landroid/app/IActivityTaskManager;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz p0, :cond_0

    .line 24
    move p0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move p0, v0

    .line 27
    :goto_0
    if-eqz v1, :cond_1

    .line 29
    move v0, v2

    .line 30
    :cond_1
    const/16 v1, 0x330

    .line 32
    invoke-static {v1, v2, p1, p0, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZ)V

    .line 35
    sget-object p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    .line 37
    const-string p0, "android"

    .line 39
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_1

    .line 43
    :catch_0
    move-exception p0

    .line 44
    const-string p1, "GrammaticalInflection"

    .line 46
    const-string v0, "Can not update configuration"

    .line 48
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    :goto_1
    return-void
.end method


# virtual methods
.method public getSystemGrammaticalGender(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 6
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 9
    move-result p0

    .line 10
    if-gez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 13
    :cond_0
    monitor-exit v0

    .line 14
    return p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw p0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "grammatical_inflection"

    .line 4
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBinderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionBinderService;

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 9
    new-instance v0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    .line 14
    const-class p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    .line 16
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public final onUserUnlocked(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v1, p0, p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;Lcom/android/server/SystemService$TargetUser;)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void
.end method

.method public final setRequestedApplicationGrammaticalGender(Ljava/lang/String;II)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 3
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 5
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mGrammaticalGender:Ljava/lang/Integer;

    .line 18
    if-nez v0, :cond_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v0

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    move v0, v1

    .line 27
    :goto_1
    iget-object v2, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 29
    check-cast v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 31
    new-instance v3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 33
    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 35
    invoke-direct {v3, p2, v2, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v2, "i18n.grammatical_Inflection.enabled"

    .line 41
    const/4 v4, 0x1

    .line 42
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_3

    .line 48
    if-eqz v0, :cond_2

    .line 50
    const-string p0, "GrammaticalInflection"

    .line 52
    const-string p1, "Clearing the user\'s grammatical gender setting"

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    monitor-enter v3

    .line 58
    :try_start_0
    iput v1, v3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 60
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 64
    goto :goto_2

    .line 65
    :catchall_0
    move-exception p0

    .line 66
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw p0

    .line 68
    :cond_2
    :goto_2
    return-void

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 71
    const-wide/16 v5, 0x0

    .line 73
    invoke-virtual {p0, p1, v5, v6, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    .line 76
    move-result p0

    .line 77
    if-eqz p3, :cond_4

    .line 79
    move p1, v4

    .line 80
    goto :goto_3

    .line 81
    :cond_4
    move p1, v1

    .line 82
    :goto_3
    if-eqz v0, :cond_5

    .line 84
    move v1, v4

    .line 85
    :cond_5
    const/16 p2, 0x248

    .line 87
    const/4 v0, 0x2

    .line 88
    invoke-static {p2, v0, p0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZ)V

    .line 91
    monitor-enter v3

    .line 92
    :try_start_2
    iput p3, v3, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mGrammaticalGender:I

    .line 94
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    invoke-virtual {v3}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 98
    return-void

    .line 99
    :catchall_1
    move-exception p0

    .line 100
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 101
    throw p0
.end method

.method public final setSystemWideGrammaticalGender(II)V
    .locals 5

    .line 1
    const-string v0, "Failed to write file "

    .line 3
    :try_start_0
    invoke-static {}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->checkSystemTermsOfAddressIsEnabled()Z

    .line 6
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    if-nez v1, :cond_0

    .line 9
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_1
    const-string v1, "GrammaticalInflectionService.setSystemWideGrammaticalGender"

    .line 15
    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 18
    sget-object v1, Landroid/app/GrammaticalInflectionManager;->VALID_GRAMMATICAL_GENDER_VALUES:Ljava/util/Set;

    .line 20
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v2

    .line 24
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 30
    new-instance v1, Ljava/io/File;

    .line 32
    invoke-static {p2}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 35
    move-result-object v2

    .line 36
    const-string/jumbo v3, "grammatical_inflection"

    .line 39
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    new-instance v2, Ljava/io/File;

    .line 44
    const-string/jumbo v3, "user_settings.xml"

    .line 47
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mLock:Ljava/lang/Object;

    .line 52
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    new-instance v3, Landroid/util/AtomicFile;

    .line 55
    invoke-direct {v3, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 58
    :try_start_3
    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 61
    move-result-object v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 62
    :try_start_4
    invoke-static {p1, v2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->toXmlByteArray(ILjava/io/FileOutputStream;)[B

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 72
    iget-object p0, p0, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mGrammaticalGenderCache:Landroid/util/SparseIntArray;

    .line 74
    invoke-virtual {p0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    :try_start_6
    invoke-static {p1, p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->updateConfiguration(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 81
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception p0

    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p0

    .line 90
    goto :goto_0

    .line 91
    :catch_1
    move-exception p0

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_0
    :try_start_7
    const-string p1, "GrammaticalInflection"

    .line 95
    new-instance p2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 107
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    if-eqz v2, :cond_1

    .line 112
    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 115
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 117
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 120
    throw p1

    .line 121
    :goto_1
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 122
    :try_start_8
    throw p0

    .line 123
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    const-string p1, "Unknown grammatical gender"

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 134
    throw p0
.end method
