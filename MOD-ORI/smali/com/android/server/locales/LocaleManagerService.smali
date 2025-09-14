.class public final Lcom/android/server/locales/LocaleManagerService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

.field public final mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mWriteLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 4
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-direct {v0, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 5
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 6
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 8
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocaleManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 10
    new-instance v10, Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 11
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    .line 12
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v5, "locale_manager_service_updated_system_apps.xml"

    invoke-direct {v2, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 13
    invoke-direct {v10, p1, p0, v1}, Lcom/android/server/locales/SystemAppUpdateTracker;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/util/AtomicFile;)V

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/locales/LocaleManagerService$1;

    invoke-direct {v2, v10}, Lcom/android/server/locales/LocaleManagerService$1;-><init>(Lcom/android/server/locales/SystemAppUpdateTracker;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 15
    new-instance v11, Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 16
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v11

    move-object v2, p1

    move-object v3, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/locales/LocaleManagerBackupHelper;-><init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/os/HandlerThread;Landroid/util/SparseArray;Ljava/io/File;Landroid/content/SharedPreferences;)V

    .line 17
    iput-object v11, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 18
    new-instance v1, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;

    .line 19
    invoke-direct {v1}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 20
    iput-object v11, v1, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 21
    iput-object v10, v1, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mSystemAppUpdateTracker:Lcom/android/server/locales/SystemAppUpdateTracker;

    .line 22
    iput-object p0, v1, Lcom/android/server/locales/LocaleManagerServicePackageMonitor;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 23
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p0, v0, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/app/ActivityManagerInternal;Landroid/content/pm/PackageManager;Lcom/android/server/locales/LocaleManagerBackupHelper;Lcom/android/internal/content/PackageMonitor;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance p6, Ljava/lang/Object;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 27
    new-instance p1, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    invoke-direct {p1, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 28
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 29
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 30
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 31
    iput-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    return-void
.end method

.method public static createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "android.intent.extra.PACKAGE_NAME"

    .line 7
    .line 8
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string p1, "android.intent.extra.LOCALE_LIST"

    .line 13
    .line 14
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/high16 p1, 0x11000000

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0
.end method

.method public static getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "locale_configs"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/io/File;

    .line 14
    .line 15
    const-string v1, ".xml"

    .line 16
    .line 17
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "locale-config"

    .line 7
    .line 8
    .line 9
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string/jumbo v3, "locale"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    const-string/jumbo v3, "name"

    .line 37
    .line 38
    .line 39
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v4, "Unexpected tag name: "

    .line 50
    .line 51
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, "LocaleManagerService"

    .line 62
    .line 63
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    return-object v0
.end method

.method public static toXmlByteArray(Landroid/os/LocaleList;)[B
    .locals 7

    .line 1
    const-string/jumbo v0, "locale"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "locale-config"

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    .line 9
    .line 10
    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v4, v3, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-interface {v4, v2, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 29
    .line 30
    .line 31
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 32
    .line 33
    .line 34
    new-instance v5, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string v6, ","

    .line 41
    .line 42
    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-direct {v5, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    check-cast v5, Ljava/lang/String;

    .line 68
    .line 69
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 70
    .line 71
    .line 72
    const-string/jumbo v6, "name"

    .line 73
    .line 74
    .line 75
    invoke-interface {v4, v2, v6, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    invoke-interface {v4, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_0
    invoke-interface {v4, v2, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 85
    .line 86
    .line 87
    invoke-interface {v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 91
    .line 92
    .line 93
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    .line 96
    .line 97
    return-object p0

    .line 98
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :catchall_1
    move-exception v0

    .line 103
    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :goto_2
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 107
    :catch_0
    return-object v2
.end method


# virtual methods
.method public final getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;
    .locals 8

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-string/jumbo v6, "getApplicationLocales"

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    move v3, p2

    .line 21
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ltz v0, :cond_0

    .line 43
    .line 44
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-string/jumbo v0, "i18n.feature.allow_ime_query_app_locale"

    .line 56
    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string/jumbo v1, "default_input_method"

    .line 73
    .line 74
    .line 75
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_3

    .line 84
    .line 85
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_2

    .line 90
    .line 91
    const-string v0, "LocaleManagerService"

    .line 92
    .line 93
    const-string/jumbo v1, "inValid input method"

    .line 94
    .line 95
    .line 96
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0, v0, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-ltz v0, :cond_3

    .line 109
    .line 110
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 121
    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerInternal;->isAppForeground(I)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-nez v0, :cond_4

    .line 131
    .line 132
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 133
    .line 134
    const-string v1, "android.permission.READ_APP_SPECIFIC_LOCALES"

    .line 135
    .line 136
    const-string/jumbo v2, "getApplicationLocales"

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    .line 147
    .line 148
    .line 149
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 151
    .line 152
    .line 153
    return-object p0

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    .line 157
    .line 158
    throw p0
.end method

.method public final getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2
    .line 3
    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(ILjava/lang/String;)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    return-object p0
.end method

.method public final getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-object p0

    .line 25
    :catch_0
    const-string p0, "Package not found "

    .line 26
    .line 27
    const-string p1, "LocaleManagerService"

    .line 28
    .line 29
    invoke-static {p0, p2, p1}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;
    .locals 10

    .line 1
    const-string/jumbo v0, "i18n.feature.dynamic_locales_change"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v7, 0x0

    .line 28
    const-string/jumbo v8, "getOverrideLocaleConfig"

    .line 29
    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    move v5, p2

    .line 33
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    invoke-static {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    invoke-static {p1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lcom/android/server/locales/LocaleManagerService;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    new-instance v0, Landroid/app/LocaleConfig;

    .line 62
    .line 63
    const-string v2, ","

    .line 64
    .line 65
    invoke-static {v2, p2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-static {p2}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {v0, p2}, Landroid/app/LocaleConfig;-><init>(Landroid/os/LocaleList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0

    .line 77
    .line 78
    .line 79
    return-object v0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    goto :goto_1

    .line 82
    :catchall_0
    move-exception p2

    .line 83
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0

    .line 92
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    const-string v0, "Failed to parse XML configuration from "

    .line 95
    .line 96
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    const-string p2, "LocaleManagerService"

    .line 107
    .line 108
    invoke-static {p2, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    return-object v1
.end method

.method public final getPackageUid(Ljava/lang/String;I)I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p0

    .line 14
    :catch_0
    const/4 p0, -0x1

    .line 15
    return p0
.end method

.method public final isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getPackageUid(Ljava/lang/String;I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-gez p0, :cond_2

    .line 6
    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v0, "Unknown package "

    .line 10
    .line 11
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v0, " for user "

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    const-string v1, "LocaleManagerService"

    .line 30
    .line 31
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x3

    .line 35
    if-nez p3, :cond_0

    .line 36
    .line 37
    if-eqz p4, :cond_1

    .line 38
    .line 39
    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iput p0, p3, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 43
    .line 44
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string p3, "Unknown package: "

    .line 47
    .line 48
    invoke-static {p2, p3, p1, v0}, Lcom/android/server/SensitiveContentProtectionManagerService$SensitiveContentProtectionManagerServiceBinder$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    if-eqz p3, :cond_3

    .line 57
    .line 58
    iput p0, p3, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-eqz p4, :cond_4

    .line 62
    .line 63
    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mTargetUid:I

    .line 64
    .line 65
    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    invoke-static {p1, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    return p0
.end method

.method public final isZippedOverlaysPackage(Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/16 v1, 0x80

    .line 9
    .line 10
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    const-string/jumbo p1, "com.samsung.android.hasZippedOverlays"

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 34
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string/jumbo v1, "hasZippedOverlaysPackage PackageManager.NameNotFoundException: "

    .line 37
    .line 38
    .line 39
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string p1, "LocaleManagerService"

    .line 54
    .line 55
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return v0
.end method

.method public final onStart()V
    .locals 2

    .line 1
    const-string/jumbo v0, "locale"

    .line 2
    .line 3
    .line 4
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mBinderService:Lcom/android/server/locales/LocaleManagerService$LocaleManagerBinderService;

    .line 5
    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;-><init>(Lcom/android/server/locales/LocaleManagerService;)V

    .line 12
    .line 13
    .line 14
    const-class p0, Lcom/android/server/locales/LocaleManagerService$LocaleManagerInternalImpl;

    .line 15
    .line 16
    invoke-static {p0, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V
    .locals 10

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const-string v3, "LocaleManagerService"

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    const-string p3, "There is no LocaleConfig, reset app locales"

    .line 16
    .line 17
    invoke-static {v3, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ge v4, v6, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-virtual {p3, v6}, Landroid/app/LocaleConfig;->containsLocale(Ljava/util/Locale;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_1

    .line 38
    .line 39
    const-string v5, "Missing from the LocaleConfig, reset app locales"

    .line 40
    .line 41
    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move v5, v2

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v0, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    move v2, v5

    .line 57
    :goto_2
    if-eqz v2, :cond_3

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    new-array p3, p3, [Ljava/util/Locale;

    .line 64
    .line 65
    :try_start_0
    new-instance v7, Landroid/os/LocaleList;

    .line 66
    .line 67
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    check-cast p3, [Ljava/util/Locale;

    .line 72
    .line 73
    invoke-direct {v7, p3}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    .line 74
    .line 75
    .line 76
    iget-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 77
    .line 78
    invoke-virtual {p3, p2, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->areLocalesSetFromDelegate(ILjava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    move-object v4, p0

    .line 83
    move-object v5, p1

    .line 84
    move v6, p2

    .line 85
    move v9, p4

    .line 86
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :catch_0
    move-exception p0

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    const-string p3, "Could not set locales for "

    .line 94
    .line 95
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v3, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_3
    :goto_3
    return-void
.end method

.method public final setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    .locals 10

    .line 1
    const-string v0, "Error while starting LOM: "

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;

    .line 4
    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;-><init>(I)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iput p5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    .line 19
    .line 20
    invoke-virtual {p3}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-static {p5}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p5

    .line 28
    iput-object p5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const-string/jumbo v8, "setApplicationLocales"

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    const/4 v7, 0x0

    .line 45
    const/4 v9, 0x0

    .line 46
    move v5, p2

    .line 47
    invoke-virtual/range {v2 .. v9}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    const/4 p5, 0x0

    .line 52
    invoke-virtual {p0, p1, p2, v1, p5}, Lcom/android/server/locales/LocaleManagerService;->isPackageOwnedByCaller(Ljava/lang/String;ILcom/android/server/locales/AppLocaleChangedAtomRecord;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)Z

    .line 53
    .line 54
    .line 55
    move-result p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    if-nez p5, :cond_0

    .line 57
    .line 58
    :try_start_1
    iget-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 59
    .line 60
    const-string v2, "android.permission.CHANGE_CONFIGURATION"

    .line 61
    .line 62
    const-string/jumbo v3, "setApplicationLocales"

    .line 63
    .line 64
    .line 65
    invoke-virtual {p5, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :catch_0
    move-exception p0

    .line 70
    const/4 p1, 0x4

    .line 71
    :try_start_2
    iput p1, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 72
    .line 73
    throw p0

    .line 74
    :cond_0
    :goto_0
    iget-object p5, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 75
    .line 76
    invoke-virtual {p3}, Landroid/os/LocaleList;->isEmpty()Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-virtual {p5, p1, p4, v2, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->persistLocalesModificationInfo(Ljava/lang/String;ZZI)V

    .line 81
    .line 82
    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 84
    .line 85
    .line 86
    move-result-wide p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 87
    :try_start_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 88
    .line 89
    .line 90
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerService;->isZippedOverlaysPackage(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-eqz v2, :cond_1

    .line 95
    .line 96
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/localeoverlaymanager/LocaleOverlayManagerWrapper;->applyPerAppLocale(Landroid/os/LocaleList;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catchall_0
    move-exception p0

    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-exception p0

    .line 109
    :try_start_5
    const-string p1, "LocaleManagerService"

    .line 110
    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 124
    .line 125
    .line 126
    :cond_1
    :goto_1
    :try_start_6
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 127
    .line 128
    .line 129
    iget v4, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 130
    .line 131
    iget-object v5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v6, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 134
    .line 135
    iget v7, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 136
    .line 137
    iget v8, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    .line 138
    .line 139
    const/16 v2, 0x19c

    .line 140
    .line 141
    iget v3, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    .line 142
    .line 143
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :catchall_1
    move-exception p0

    .line 148
    goto :goto_3

    .line 149
    :goto_2
    :try_start_7
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    .line 151
    .line 152
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 153
    :goto_3
    iget v4, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mTargetUid:I

    .line 154
    .line 155
    iget-object v5, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mNewLocales:Ljava/lang/String;

    .line 156
    .line 157
    iget-object v6, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 158
    .line 159
    iget v7, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 160
    .line 161
    iget v8, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCaller:I

    .line 162
    .line 163
    const/16 v2, 0x19c

    .line 164
    .line 165
    iget v3, v1, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mCallingUid:I

    .line 166
    .line 167
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    throw p0
.end method

.method public final setApplicationLocalesUnchecked(Ljava/lang/String;ILandroid/os/LocaleList;Lcom/android/server/locales/AppLocaleChangedAtomRecord;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocalesUnchecked(ILjava/lang/String;)Landroid/os/LocaleList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->convertEmptyLocales(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mPrevLocales:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mActivityTaskManagerInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 16
    .line 17
    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    .line 18
    .line 19
    new-instance v1, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 22
    .line 23
    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;-><init>(ILcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    monitor-enter v1

    .line 27
    :try_start_0
    iput-object p3, v1, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->mLocales:Landroid/os/LocaleList;

    .line 28
    .line 29
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-virtual {v1}, Lcom/android/server/wm/PackageConfigurationUpdaterImpl;->commit()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 37
    .line 38
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const/high16 v1, 0x200000

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getInstallingPackageName(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    const-string v1, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 66
    .line 67
    invoke-static {v1, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 75
    .line 76
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 81
    .line 82
    .line 83
    :cond_0
    const-string v0, "android.intent.action.APPLICATION_LOCALE_CHANGED"

    .line 84
    .line 85
    invoke-static {v0, p1, p3}, Lcom/android/server/locales/LocaleManagerService;->createBaseIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/LocaleList;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object p3, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v0, "android.permission.READ_APP_SPECIFIC_LOCALES"

    .line 96
    .line 97
    invoke-virtual {p3, p1, p2, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerService;->mBackupHelper:Lcom/android/server/locales/LocaleManagerBackupHelper;

    .line 101
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    const-string p0, "android"

    .line 106
    .line 107
    invoke-static {p0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const/4 p0, 0x1

    .line 111
    iput p0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_1
    const/4 p0, 0x2

    .line 115
    iput p0, p4, Lcom/android/server/locales/AppLocaleChangedAtomRecord;->mStatus:I

    .line 116
    .line 117
    :goto_0
    return-void

    .line 118
    :catchall_0
    move-exception p0

    .line 119
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    throw p0
.end method

.method public final setOverrideLocaleConfigUnchecked(Ljava/lang/String;ILandroid/app/LocaleConfig;Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;)V
    .locals 8

    .line 1
    const-string v0, "Unknown package name "

    .line 2
    .line 3
    const-string v1, "Failed to write file "

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerService;->mWriteLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerService;->mContext:Landroid/content/Context;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Landroid/app/LocaleConfig;->fromContextIgnoringOverride(Landroid/content/Context;)Landroid/app/LocaleConfig;

    .line 16
    .line 17
    .line 18
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    invoke-static {p2, p1}, Lcom/android/server/locales/LocaleManagerService;->getXmlFileNameForUser(ILjava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v4, 0x5

    .line 24
    const/4 v5, 0x1

    .line 25
    if-nez p3, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    const-string p3, "LocaleManagerService"

    .line 34
    .line 35
    const-string/jumbo v1, "remove the override LocaleConfig"

    .line 36
    .line 37
    .line 38
    invoke-static {p3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto/16 :goto_2

    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 49
    .line 50
    .line 51
    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mOverrideRemoved:Z

    .line 52
    .line 53
    iput v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 54
    .line 55
    monitor-exit v2

    .line 56
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerService;->getOverrideLocaleConfig(Ljava/lang/String;I)Landroid/app/LocaleConfig;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {p3, v6}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    if-eqz v6, :cond_2

    .line 66
    .line 67
    const-string p0, "LocaleManagerService"

    .line 68
    .line 69
    const-string/jumbo p1, "the same override, ignore it"

    .line 70
    .line 71
    .line 72
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsPrevConfig:Z

    .line 76
    .line 77
    monitor-exit v2

    .line 78
    return-void

    .line 79
    :cond_2
    invoke-virtual {p3}, Landroid/app/LocaleConfig;->getSupportedLocales()Landroid/os/LocaleList;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    if-nez v6, :cond_3

    .line 84
    .line 85
    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    :cond_3
    invoke-virtual {v6}, Landroid/os/LocaleList;->size()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    iput v7, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mNumLocales:I

    .line 94
    .line 95
    new-instance v7, Landroid/util/AtomicFile;

    .line 96
    .line 97
    invoke-direct {v7, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :try_start_2
    invoke-virtual {v7}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 101
    .line 102
    .line 103
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    :try_start_3
    invoke-static {v6}, Lcom/android/server/locales/LocaleManagerService;->toXmlByteArray(Landroid/os/LocaleList;)[B

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    invoke-virtual {v3, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    .line 110
    .line 111
    :try_start_4
    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, p1, p2, p3, v4}, Lcom/android/server/locales/LocaleManagerService;->removeUnsupportedAppLocales(Ljava/lang/String;ILandroid/app/LocaleConfig;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p3, v0}, Landroid/app/LocaleConfig;->isSameLocaleConfig(Landroid/app/LocaleConfig;)Z

    .line 118
    .line 119
    .line 120
    move-result p0

    .line 121
    if-eqz p0, :cond_4

    .line 122
    .line 123
    const-string p0, "LocaleManagerService"

    .line 124
    .line 125
    const-string/jumbo p1, "setOverrideLocaleConfig, same as the app\'s LocaleConfig"

    .line 126
    .line 127
    .line 128
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    iput-boolean v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mSameAsResConfig:Z

    .line 132
    .line 133
    :cond_4
    iput v5, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 134
    .line 135
    monitor-exit v2

    .line 136
    return-void

    .line 137
    :catch_0
    move-exception p0

    .line 138
    goto :goto_1

    .line 139
    :catch_1
    move-exception p0

    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_1
    const-string p1, "LocaleManagerService"

    .line 142
    .line 143
    new-instance p2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .line 157
    .line 158
    if-eqz v3, :cond_5

    .line 159
    .line 160
    invoke-virtual {v7, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    const/4 p0, 0x2

    .line 164
    iput p0, p4, Lcom/android/server/locales/AppSupportedLocalesChangedAtomRecord;->mStatus:I

    .line 165
    .line 166
    monitor-exit v2

    .line 167
    return-void

    .line 168
    :catch_2
    const-string p0, "LocaleManagerService"

    .line 169
    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    monitor-exit v2

    .line 186
    return-void

    .line 187
    :goto_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    throw p0
.end method
