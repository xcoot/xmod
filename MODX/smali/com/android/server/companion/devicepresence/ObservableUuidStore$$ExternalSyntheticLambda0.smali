.class public final synthetic Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/devicepresence/ObservableUuidStore;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 6
    iput p2, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/devicepresence/ObservableUuidStore;

    .line 3
    iget p0, p0, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v0, v0, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->mUserIdToStorageFile:Ljava/util/concurrent/ConcurrentMap;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;

    .line 13
    invoke-direct {v2, p0}, Lcom/android/server/companion/devicepresence/ObservableUuidStore$$ExternalSyntheticLambda3;-><init>(I)V

    .line 16
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/util/AtomicFile;

    .line 24
    const-string v1, "CDM_ObservableUuidStore"

    .line 26
    const-string v2, "Reading ObservableUuid for user "

    .line 28
    const-string v3, " from file="

    .line 30
    invoke-static {p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    monitor-enter v0

    .line 53
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 60
    move-result p0

    .line 61
    if-nez p0, :cond_0

    .line 63
    const-string p0, "CDM_ObservableUuidStore"

    .line 65
    const-string v1, "File does not exist -> Abort"

    .line 67
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance p0, Ljava/util/ArrayList;

    .line 72
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    goto :goto_3

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    goto :goto_4

    .line 79
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 82
    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 86
    move-result-object v1

    .line 87
    const-string/jumbo v2, "uuids"

    .line 90
    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 93
    invoke-static {v1}, Lcom/android/server/companion/devicepresence/ObservableUuidStore;->readObservableUuidFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    .line 96
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 97
    if-eqz p0, :cond_1

    .line 99
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception p0

    .line 104
    goto :goto_2

    .line 105
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    move-object p0, v1

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception v1

    .line 109
    if-eqz p0, :cond_2

    .line 111
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 114
    goto :goto_1

    .line 115
    :catchall_2
    move-exception p0

    .line 116
    :try_start_6
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 119
    :cond_2
    :goto_1
    throw v1
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 120
    :goto_2
    :try_start_7
    const-string v1, "CDM_ObservableUuidStore"

    .line 122
    const-string v2, "Error while reading requests file"

    .line 124
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    new-instance p0, Ljava/util/ArrayList;

    .line 129
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    monitor-exit v0

    .line 133
    :goto_3
    return-object p0

    .line 134
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 135
    throw p0
.end method
