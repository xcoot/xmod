.class public final Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mUpdatedDrawablesForSource:Ljava/util/Map;

.field public final mUpdatedDrawablesForStyle:Ljava/util/Map;

.field public final mUpdatedStrings:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Ljava/util/HashMap;

    .line 11
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForStyle:Ljava/util/Map;

    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 23
    new-instance v1, Ljava/util/HashMap;

    .line 25
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 30
    new-instance v1, Ljava/lang/Object;

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 37
    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mInjector:Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$Injector;

    .line 39
    return-void
.end method


# virtual methods
.method public final getDrawableForSourceLocked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 3
    check-cast v0, Ljava/util/HashMap;

    .line 5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 12
    return-object v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 15
    check-cast v0, Ljava/util/HashMap;

    .line 17
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map;

    .line 23
    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 29
    return-object v1

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedDrawablesForSource:Ljava/util/Map;

    .line 32
    check-cast p0, Ljava/util/HashMap;

    .line 34
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/util/Map;

    .line 40
    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/util/Map;

    .line 46
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object p0

    .line 50
    check-cast p0, Landroid/app/admin/ParcelableResource;

    .line 52
    return-object p0
.end method

.method public final getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;->mUpdatedStrings:Ljava/util/Map;

    .line 6
    check-cast p0, Ljava/util/HashMap;

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Landroid/app/admin/ParcelableResource;

    .line 14
    monitor-exit v0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public final write()V
    .locals 7

    .line 1
    const-string v0, "DevicePolicyManagerService"

    .line 3
    const-string v1, "Writing updated resources to file."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;

    .line 10
    invoke-direct {v1, p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;-><init>(Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;)V

    .line 13
    const-string/jumbo p0, "root"

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "Writing to "

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    iget-object v3, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v2, Landroid/util/AtomicFile;

    .line 37
    iget-object v3, v1, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->mFile:Ljava/io/File;

    .line 39
    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 42
    const/4 v3, 0x0

    .line 43
    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 46
    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :try_start_1
    invoke-static {v4}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 50
    move-result-object v5

    .line 51
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 53
    invoke-interface {v5, v3, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 56
    invoke-interface {v5, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 59
    invoke-virtual {v1, v5}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider$ResourcesReaderWriter;->writeInner(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 62
    invoke-interface {v5, v3, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 65
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 68
    invoke-interface {v5}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 71
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p0

    .line 76
    move-object v3, v4

    .line 77
    goto :goto_0

    .line 78
    :catch_1
    move-exception p0

    .line 79
    :goto_0
    const-string v1, "Exception when writing"

    .line 81
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    if-eqz v3, :cond_0

    .line 86
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 89
    :cond_0
    :goto_1
    return-void
.end method
