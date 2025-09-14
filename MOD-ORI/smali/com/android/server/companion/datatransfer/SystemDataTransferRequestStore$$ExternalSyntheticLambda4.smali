.class public final synthetic Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore$$ExternalSyntheticLambda4;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->getStorageFileForUser(I)Landroid/util/AtomicFile;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "CDM_SystemDataTransferRequestStore"

    .line 10
    .line 11
    const-string v2, "Reading SystemDataTransferRequests for user "

    .line 12
    .line 13
    const-string v3, " from file="

    .line 14
    .line 15
    invoke-static {p0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_0

    .line 47
    .line 48
    const-string p0, "CDM_SystemDataTransferRequestStore"

    .line 49
    .line 50
    const-string v1, "File does not exist -> Abort"

    .line 51
    .line 52
    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    new-instance p0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    goto :goto_3

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_4

    .line 64
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 65
    .line 66
    .line 67
    move-result-object v1
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string/jumbo v3, "requests"

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p0, v2}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->readRequestsFromXml(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/ArrayList;

    .line 79
    .line 80
    .line 81
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 82
    if-eqz v1, :cond_1

    .line 83
    .line 84
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception p0

    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    goto :goto_3

    .line 92
    :catchall_1
    move-exception p0

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :catchall_2
    move-exception v1

    .line 100
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_1
    throw p0
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 104
    :goto_2
    :try_start_7
    const-string v1, "CDM_SystemDataTransferRequestStore"

    .line 105
    .line 106
    const-string v2, "Error while reading requests file"

    .line 107
    .line 108
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    new-instance p0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    monitor-exit v0

    .line 117
    :goto_3
    return-object p0

    .line 118
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 119
    throw p0
.end method
