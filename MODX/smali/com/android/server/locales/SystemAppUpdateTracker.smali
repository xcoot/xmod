.class public final Lcom/android/server/locales/SystemAppUpdateTracker;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFileLock:Ljava/lang/Object;

.field public final mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

.field public final mUpdatedApps:Ljava/util/Set;

.field public final mUpdatedAppsFile:Landroid/util/AtomicFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locales/LocaleManagerService;Landroid/util/AtomicFile;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mFileLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 18
    iput-object p1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mContext:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mLocaleManagerService:Lcom/android/server/locales/LocaleManagerService;

    .line 22
    iput-object p3, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 24
    return-void
.end method


# virtual methods
.method public getUpdatedApps()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 3
    return-object p0
.end method

.method public final readFromXml(Ljava/io/InputStream;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Lcom/android/modules/utils/TypedXmlPullParser;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 14
    const-string/jumbo p1, "system_apps"

    .line 17
    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 20
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    .line 23
    move-result p1

    .line 24
    :cond_0
    :goto_0
    invoke-static {v0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const-string/jumbo v2, "package"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 43
    const/4 v1, 0x0

    .line 44
    const-string/jumbo v2, "name"

    .line 47
    invoke-interface {v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 59
    check-cast v2, Ljava/util/HashSet;

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method public final updateBroadcastedAppsList(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mFileLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 6
    check-cast v1, Ljava/util/HashSet;

    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    const/4 p1, 0x0

    .line 12
    :try_start_1
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 14
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/server/locales/SystemAppUpdateTracker;->writeToXmlLocked(Ljava/io/OutputStream;)V

    .line 21
    iget-object v1, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 23
    invoke-virtual {v1, p1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    :try_start_2
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedAppsFile:Landroid/util/AtomicFile;

    .line 30
    invoke-virtual {p0, p1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 33
    const-string p0, "SystemAppUpdateTracker"

    .line 35
    const-string p1, "Failed to persist the updated apps list"

    .line 37
    invoke-static {p0, p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 40
    :goto_0
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    throw p0
.end method

.method public final writeToXmlLocked(Ljava/io/OutputStream;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/util/Xml;->newFastSerializer()Lcom/android/modules/utils/TypedXmlSerializer;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v0, p1, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 20
    const-string/jumbo p1, "system_apps"

    .line 23
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 26
    iget-object p0, p0, Lcom/android/server/locales/SystemAppUpdateTracker;->mUpdatedApps:Ljava/util/Set;

    .line 28
    check-cast p0, Ljava/util/HashSet;

    .line 30
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 34
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 46
    const-string/jumbo v3, "package"

    .line 49
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 52
    const-string/jumbo v4, "name"

    .line 55
    invoke-interface {v0, v1, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 58
    invoke-interface {v0, v1, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-interface {v0, v1, p1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 68
    return-void
.end method
