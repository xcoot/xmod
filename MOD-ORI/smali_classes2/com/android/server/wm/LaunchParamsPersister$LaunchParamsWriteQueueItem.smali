.class public final Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;ILandroid/content/ComponentName;Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final matches(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)Z
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 2
    .line 3
    iget v0, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 4
    .line 5
    iget v1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 6
    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
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

.method public final process()V
    .locals 6

    .line 1
    const-string v0, "launch_params"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 5
    .line 6
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v2}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-interface {v3, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 19
    .line 20
    .line 21
    iget-object v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 22
    .line 23
    invoke-virtual {v4, v3}, Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 27
    .line 28
    .line 29
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 36
    .line 37
    .line 38
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-object v2, v1

    .line 41
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->this$0:Lcom/android/server/wm/LaunchParamsPersister;

    .line 42
    .line 43
    iget-object v3, v3, Lcom/android/server/wm/LaunchParamsPersister;->mUserFolderGetter:Ljava/util/function/IntFunction;

    .line 44
    .line 45
    iget v4, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mUserId:I

    .line 46
    .line 47
    invoke-interface {v3, v4}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/io/File;

    .line 52
    .line 53
    new-instance v5, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const-string v3, "LaunchParamsPersister"

    .line 63
    .line 64
    if-nez v0, :cond_0

    .line 65
    .line 66
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    .line 72
    const-string p0, "Failed to create folder for "

    .line 73
    .line 74
    invoke-static {v4, p0, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 79
    .line 80
    invoke-static {v5, v0}, Lcom/android/server/wm/LaunchParamsPersister;->getParamFile(Ljava/io/File;Landroid/content/ComponentName;)Ljava/io/File;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    new-instance v4, Landroid/util/AtomicFile;

    .line 85
    .line 86
    invoke-direct {v4, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 87
    .line 88
    .line 89
    :try_start_1
    invoke-virtual {v4}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :catch_1
    move-exception v0

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v5, "Failed to write param file for "

    .line 104
    .line 105
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mComponentName:Landroid/content/ComponentName;

    .line 109
    .line 110
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v3, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .line 119
    .line 120
    if-eqz v1, :cond_1

    .line 121
    .line 122
    invoke-virtual {v4, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    return-void
.end method

.method public final updateFrom(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$LaunchParamsWriteQueueItem;->mLaunchParams:Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    .line 6
    .line 7
    return-void
.end method
