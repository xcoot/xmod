.class public final Lcom/android/server/locales/LocaleManagerBackupHelper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;


# instance fields
.field public final mArchivedPackagesFile:Ljava/io/File;

.field public final mClock:Ljava/time/Clock;

.field public final mContext:Landroid/content/Context;

.field public final mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

.field public final mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mStagedDataFiles:Landroid/util/SparseArray;

.field public final mStagedDataLock:Ljava/lang/Object;

.field public final mUserMonitor:Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;


# direct methods
.method public static -$$Nest$mremoveArchivedPackagesForUser(Lcom/android/server/locales/LocaleManagerBackupHelper;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesFile()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesSp(Ljava/io/File;)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v1, "LocaleManagerBkpHelper"

    .line 17
    .line 18
    if-eqz p0, :cond_2

    .line 19
    .line 20
    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    const-string p1, "Failed to remove user"

    .line 42
    .line 43
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    if-eqz p0, :cond_3

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    :goto_0
    const-string p0, "The profile is not existed in the archived package info"

    .line 67
    .line 68
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    :cond_3
    :goto_1
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x3

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/content/pm/PackageManager;Ljava/time/Clock;Landroid/os/HandlerThread;Landroid/util/SparseArray;Ljava/io/File;Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 18
    .line 19
    if-eqz p8, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 23
    .line 24
    const/4 p3, 0x0

    .line 25
    invoke-static {p3}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object p4

    .line 29
    const-string p8, "LocalesFromDelegatePrefs.xml"

    .line 30
    .line 31
    invoke-direct {p2, p4, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    invoke-virtual {p4, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 39
    .line 40
    .line 41
    move-result-object p8

    .line 42
    :goto_0
    iput-object p8, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    iput-object p7, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mArchivedPackagesFile:Ljava/io/File;

    .line 45
    .line 46
    iput-object p6, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataFiles:Landroid/util/SparseArray;

    .line 47
    .line 48
    new-instance p2, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;

    .line 49
    .line 50
    invoke-direct {p2, p0}, Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;-><init>(Lcom/android/server/locales/LocaleManagerBackupHelper;)V

    .line 51
    .line 52
    .line 53
    iput-object p2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;

    .line 54
    .line 55
    const-string p0, "android.intent.action.USER_REMOVED"

    .line 56
    .line 57
    invoke-static {p0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    sget-object p4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 62
    .line 63
    const/4 p6, 0x0

    .line 64
    invoke-virtual {p5}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    .line 65
    .line 66
    .line 67
    move-result-object p5

    .line 68
    move-object p0, p1

    .line 69
    move-object p1, p2

    .line 70
    move-object p2, p4

    .line 71
    move-object p4, p6

    .line 72
    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public static readFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/HashMap;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string/jumbo v3, "package"

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    const-string/jumbo v3, "name"

    .line 31
    .line 32
    .line 33
    invoke-interface {p0, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string/jumbo v4, "locales"

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const-string/jumbo v5, "delegate_selector"

    .line 45
    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    invoke-interface {p0, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-nez v5, :cond_0

    .line 57
    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_0

    .line 63
    .line 64
    new-instance v5, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;

    .line 65
    .line 66
    invoke-direct {v5, v4, v2}, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;-><init>(Ljava/lang/String;Z)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    return-object v0
.end method

.method public static writeToXml(Ljava/io/OutputStream;Ljava/util/HashMap;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, p0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p0, "locales"

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    const-string/jumbo v4, "package"

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 57
    .line 58
    .line 59
    const-string/jumbo v5, "name"

    .line 60
    .line 61
    .line 62
    invoke-interface {v0, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    check-cast v5, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;

    .line 70
    .line 71
    iget-object v5, v5, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mLocales:Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v0, v1, p0, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    check-cast v3, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;

    .line 81
    .line 82
    iget-boolean v3, v3, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mSetFromDelegate:Z

    .line 83
    .line 84
    const-string/jumbo v5, "delegate_selector"

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    .line 89
    .line 90
    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {v0, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 98
    .line 99
    .line 100
    return-void
.end method


# virtual methods
.method public final areLocalesSetFromDelegate(ILjava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p0, "LocaleManagerBkpHelper"

    .line 6
    .line 7
    const-string p1, "Failed to persist data into the shared preference!"

    .line 8
    .line 9
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 21
    .line 22
    new-instance v1, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p0, p1, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    return p0
.end method

.method public final checkExistingLocalesAndApplyRestore(ILcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "LocaleManagerBkpHelper"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p0, "No locales info for "

    .line 6
    .line 7
    invoke-static {p0, p3, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 12
    .line 13
    invoke-virtual {v1, p3, p1}, Lcom/android/server/locales/LocaleManagerService;->getApplicationLocales(Ljava/lang/String;I)Landroid/os/LocaleList;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/LocaleList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    const-string v2, "Could not check for current locales before restoring"

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 28
    .line 29
    .line 30
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 31
    .line 32
    iget-object p0, p2, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mLocales:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p0}, Landroid/os/LocaleList;->forLanguageTags(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    iget-boolean v7, p2, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mSetFromDelegate:Z

    .line 39
    .line 40
    const/4 v8, 0x3

    .line 41
    move-object v4, p3

    .line 42
    move v5, p1

    .line 43
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/locales/LocaleManagerService;->setApplicationLocales(Ljava/lang/String;ILandroid/os/LocaleList;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    const-string p2, "Could not restore locales for "

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method public final checkStageDataAndApplyRestore(ILjava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->cleanStagedDataForOldEntriesLocked(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-interface {v1, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->removeFromArchivedPackagesInfo(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->doLazyRestoreLocked(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    monitor-exit v0

    .line 33
    goto :goto_2

    .line 34
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    :catch_0
    move-exception p0

    .line 37
    const-string p1, "LocaleManagerBkpHelper"

    .line 38
    .line 39
    const-string p2, "Exception in onPackageAdded."

    .line 40
    .line 41
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_2
    return-void
.end method

.method public final cleanStagedDataForOldEntriesLocked(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "staged_data_time"

    .line 6
    .line 7
    .line 8
    const-wide/16 v2, -0x1

    .line 9
    .line 10
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mClock:Ljava/time/Clock;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    sget-object v4, Lcom/android/server/locales/LocaleManagerBackupHelper;->STAGE_DATA_RETENTION_PERIOD:Ljava/time/Duration;

    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v4

    .line 30
    sub-long/2addr v2, v4

    .line 31
    cmp-long v0, v0, v2

    .line 32
    .line 33
    if-gez v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public final deleteStagedDataLocked(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataFiles:Landroid/util/SparseArray;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/io/File;

    .line 6
    .line 7
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "LocalesStagedDataPrefs.xml"

    .line 12
    .line 13
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    move-object v0, p1

    .line 22
    check-cast v0, Ljava/io/File;

    .line 23
    .line 24
    :goto_0
    iget-object p1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataFiles:Landroid/util/SparseArray;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    :goto_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-nez p0, :cond_2

    .line 59
    .line 60
    const-string p0, "LocaleManagerBkpHelper"

    .line 61
    .line 62
    const-string p1, "Failed to commit data!"

    .line 63
    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    :cond_3
    return-void
.end method

.method public final doLazyRestoreLocked(ILjava/lang/String;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 3
    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p2, v0, p1}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    const/4 v2, 0x1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    move v1, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move v1, v0

    .line 20
    :goto_1
    const-string v3, "LocaleManagerBkpHelper"

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p2, " not installed for user "

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, ". Could not restore locales from stage data"

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v4, ""

    .line 58
    .line 59
    invoke-interface {v1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    const-string v5, " s:"

    .line 70
    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    .line 77
    array-length v5, v4

    .line 78
    const/4 v6, 0x2

    .line 79
    if-eq v5, v6, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    new-instance v5, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;

    .line 83
    .line 84
    aget-object v0, v4, v0

    .line 85
    .line 86
    aget-object v4, v4, v2

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-direct {v5, v0, v4}, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;-><init>(Ljava/lang/String;Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1, v5, p2}, Lcom/android/server/locales/LocaleManagerBackupHelper;->checkExistingLocalesAndApplyRestore(ILcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_4

    .line 111
    .line 112
    const-string p2, "Failed to commit data!"

    .line 113
    .line 114
    invoke-static {v3, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .line 116
    .line 117
    goto :goto_3

    .line 118
    :cond_3
    :goto_2
    const-string p0, "Failed to restore data"

    .line 119
    .line 120
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_4
    :goto_3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-ne p2, v2, :cond_5

    .line 133
    .line 134
    const-string/jumbo p2, "staged_data_time"

    .line 135
    .line 136
    .line 137
    const-wide/16 v2, -0x1

    .line 138
    .line 139
    invoke-interface {v1, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    cmp-long p2, v0, v2

    .line 144
    .line 145
    if-eqz p2, :cond_5

    .line 146
    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->deleteStagedDataLocked(I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    return-void
.end method

.method public final getArchivedPackagesFile()Ljava/io/File;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mArchivedPackagesFile:Ljava/io/File;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/io/File;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "ArchivedPackagesPrefs.xml"

    .line 13
    .line 14
    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public final getArchivedPackagesSp(Ljava/io/File;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mArchivedPackagesFile:Ljava/io/File;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :goto_0
    return-object p0
.end method

.method public final getStagedDataSp(I)Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataFiles:Landroid/util/SparseArray;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mStagedDataFiles:Landroid/util/SparseArray;

    .line 13
    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    new-instance p0, Ljava/io/File;

    .line 17
    .line 18
    invoke-static {p1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "LocalesStagedDataPrefs.xml"

    .line 23
    .line 24
    invoke-direct {p0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/io/File;

    .line 33
    .line 34
    :goto_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mContext:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/io/File;

    .line 46
    .line 47
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_1
    return-object p0
.end method

.method public getUserMonitor()Landroid/content/BroadcastReceiver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mUserMonitor:Lcom/android/server/locales/LocaleManagerBackupHelper$UserMonitor;

    .line 2
    .line 3
    return-object p0
.end method

.method public final persistLocalesModificationInfo(Ljava/lang/String;ZZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "LocaleManagerBkpHelper"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Failed to persist data into the shared preference!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p4

    .line 21
    new-instance v2, Landroid/util/ArraySet;

    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 24
    .line 25
    new-instance v3, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p4, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-direct {v2, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    if-eqz p2, :cond_1

    .line 38
    .line 39
    if-nez p3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    .line 60
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, p4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-nez p0, :cond_3

    .line 71
    .line 72
    const-string/jumbo p0, "failed to commit locale setter info"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void
.end method

.method public final removeFromArchivedPackagesInfo(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesFile()Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {p0, v1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getArchivedPackagesSp(Ljava/io/File;)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    new-instance v1, Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance v2, Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_2

    .line 42
    .line 43
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    const-string v3, "LocaleManagerBkpHelper"

    .line 52
    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_0

    .line 64
    .line 65
    const-string p1, "Failed to remove user"

    .line 66
    .line 67
    invoke-static {v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result p0

    .line 78
    if-eqz p0, :cond_2

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    .line 90
    .line 91
    move-result p0

    .line 92
    if-nez p0, :cond_2

    .line 93
    .line 94
    const-string/jumbo p0, "failed to remove the package"

    .line 95
    .line 96
    .line 97
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    :cond_2
    :goto_0
    return-void
.end method

.method public final removePackageFromPersistedInfo(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    const-string v1, "LocaleManagerBkpHelper"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Failed to persist data into the shared preference!"

    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Landroid/util/ArraySet;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    new-instance v3, Landroid/util/ArraySet;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v0, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    iget-object p0, p0, Lcom/android/server/locales/LocaleManagerBackupHelper;->mDelegateAppLocalePackages:Landroid/content/SharedPreferences;

    .line 43
    .line 44
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_1

    .line 56
    .line 57
    const-string p0, "Failed to commit data!"

    .line 58
    .line 59
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public final storeStagedDataInfo(ILcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p2, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mLocales:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " s:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-boolean p2, p2, Lcom/android/server/locales/LocaleManagerBackupHelper$LocalesInfo;->mSetFromDelegate:Z

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/server/locales/LocaleManagerBackupHelper;->getStagedDataSp(I)Landroid/content/SharedPreferences;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-interface {p0, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    const-string p0, "LocaleManagerBkpHelper"

    .line 48
    .line 49
    const-string p1, "Failed to commit data!"

    .line 50
    .line 51
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method
