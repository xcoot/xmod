.class public final Lcom/android/server/slice/SlicePermissionManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/slice/DirtyTracker;


# instance fields
.field public final mCachedClients:Landroid/util/ArrayMap;

.field public final mCachedProviders:Landroid/util/ArrayMap;

.field public final mDirty:Landroid/util/ArraySet;

.field public final mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

.field public final mSliceDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance p1, Landroid/util/ArrayMap;

    .line 12
    .line 13
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 17
    .line 18
    new-instance p1, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 24
    .line 25
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$H;

    .line 26
    .line 27
    invoke-direct {p1, p0, p2}, Lcom/android/server/slice/SlicePermissionManager$H;-><init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 31
    .line 32
    iput-object p3, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public addDirtyImmediate(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/slice/SliceClientPermissions;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "client_"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 26
    .line 27
    .line 28
    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 29
    :try_start_2
    iget-object v1, v0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 30
    .line 31
    invoke-static {v1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 36
    .line 37
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 44
    :try_start_4
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 45
    .line 46
    const/4 v3, 0x4

    .line 47
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const-wide/32 v4, 0x493e0

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 55
    .line 56
    .line 57
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 58
    .line 59
    .line 60
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    goto :goto_2

    .line 63
    :catch_1
    move-exception v0

    .line 64
    goto :goto_3

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catchall_1
    move-exception v1

    .line 68
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 69
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 70
    :goto_0
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_2
    move-exception v0

    .line 75
    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_1
    throw v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 79
    :goto_2
    const-string v1, "SlicePermissionManager"

    .line 80
    .line 81
    const-string v2, "Can\'t read client"

    .line 82
    .line 83
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :goto_3
    const-string v1, "SlicePermissionManager"

    .line 88
    .line 89
    const-string v2, "Can\'t read client"

    .line 90
    .line 91
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :catch_2
    :goto_4
    new-instance v1, Lcom/android/server/slice/SliceClientPermissions;

    .line 95
    .line 96
    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceClientPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 100
    .line 101
    monitor-enter v0

    .line 102
    :try_start_a
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 103
    .line 104
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    monitor-exit v0

    .line 108
    goto :goto_5

    .line 109
    :catchall_3
    move-exception p0

    .line 110
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 111
    throw p0

    .line 112
    :cond_0
    :goto_5
    return-object v1

    .line 113
    :catchall_4
    move-exception p0

    .line 114
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 115
    throw p0
.end method

.method public final getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 12
    .line 13
    .line 14
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    .line 15
    .line 16
    new-instance v1, Ljava/io/File;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public final getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iput-object p0, p1, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    .line 15
    .line 16
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    iput-object p0, p1, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->input:Ljava/io/InputStream;

    .line 27
    .line 28
    sget-object v1, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-object p1
.end method

.method public final getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions;

    .line 11
    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    :try_start_1
    invoke-virtual {p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string/jumbo v1, "provider_"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 27
    .line 28
    .line 29
    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    .line 30
    :try_start_2
    iget-object v1, v0, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 31
    .line 32
    invoke-static {v1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 37
    .line 38
    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    :try_start_3
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 40
    .line 41
    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :try_start_4
    iget-object v2, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    const-wide/32 v4, 0x493e0

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 56
    .line 57
    .line 58
    :try_start_5
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    .line 59
    .line 60
    .line 61
    return-object v1

    .line 62
    :catch_0
    move-exception v0

    .line 63
    goto :goto_2

    .line 64
    :catch_1
    move-exception v0

    .line 65
    goto :goto_3

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    goto :goto_0

    .line 68
    :catchall_1
    move-exception v1

    .line 69
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 70
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    :goto_0
    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_2
    move-exception v0

    .line 76
    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    :goto_1
    throw v1
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    .line 80
    :goto_2
    const-string v1, "SlicePermissionManager"

    .line 81
    .line 82
    const-string v2, "Can\'t read provider"

    .line 83
    .line 84
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    .line 86
    .line 87
    goto :goto_4

    .line 88
    :goto_3
    const-string v1, "SlicePermissionManager"

    .line 89
    .line 90
    const-string v2, "Can\'t read provider"

    .line 91
    .line 92
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .line 94
    .line 95
    :catch_2
    :goto_4
    new-instance v1, Lcom/android/server/slice/SliceProviderPermissions;

    .line 96
    .line 97
    invoke-direct {v1, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;-><init>(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/DirtyTracker;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 101
    .line 102
    monitor-enter v0

    .line 103
    :try_start_a
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 104
    .line 105
    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    monitor-exit v0

    .line 109
    goto :goto_5

    .line 110
    :catchall_3
    move-exception p0

    .line 111
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 112
    throw p0

    .line 113
    :cond_0
    :goto_5
    return-object v1

    .line 114
    :catchall_4
    move-exception p0

    .line 115
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 116
    throw p0
.end method

.method public final grantSliceAccess(Ljava/lang/String;ILjava/lang/String;ILandroid/net/Uri;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 7
    .line 8
    invoke-direct {p1, p3, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-instance p3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 16
    .line 17
    invoke-virtual {p5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p3, v1, p4}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p3, p1}, Lcom/android/server/slice/SliceClientPermissions;->getOrCreateAuthority(Lcom/android/server/slice/SlicePermissionManager$PkgUser;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p4

    .line 36
    new-array p4, p4, [Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {p3, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    check-cast p3, [Ljava/lang/String;

    .line 43
    .line 44
    iget-object p4, p2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 45
    .line 46
    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    .line 47
    .line 48
    .line 49
    move-result p4

    .line 50
    add-int/lit8 p4, p4, -0x1

    .line 51
    .line 52
    :goto_0
    if-ltz p4, :cond_2

    .line 53
    .line 54
    iget-object v1, p2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 55
    .line 56
    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, p3}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-eqz v2, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    invoke-static {p3, v1}, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->isPathPrefixMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    iget-object v1, p2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 76
    .line 77
    invoke-virtual {v1, p4}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_1
    add-int/lit8 p4, p4, -0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_2
    iget-object p4, p2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mPaths:Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {p4, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    iget-object p3, p2, Lcom/android/server/slice/SliceClientPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 89
    .line 90
    invoke-interface {p3, p2}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    invoke-static {p5}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget-object p2, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 113
    .line 114
    if-nez p2, :cond_3

    .line 115
    .line 116
    new-instance p2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 117
    .line 118
    invoke-direct {p2, p1, p0}, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;-><init>(Ljava/lang/String;Lcom/android/server/slice/SliceProviderPermissions;)V

    .line 119
    .line 120
    .line 121
    iget-object p3, p0, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 122
    .line 123
    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, p2}, Lcom/android/server/slice/SliceProviderPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :catchall_0
    move-exception p1

    .line 131
    goto :goto_5

    .line 132
    :cond_3
    :goto_2
    monitor-exit p0

    .line 133
    monitor-enter p2

    .line 134
    :try_start_1
    iget-object p0, p2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    if-eqz p0, :cond_4

    .line 141
    .line 142
    iget-object p0, p2, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 143
    .line 144
    invoke-interface {p0, p2}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :catchall_1
    move-exception p0

    .line 149
    goto :goto_4

    .line 150
    :cond_4
    :goto_3
    monitor-exit p2

    .line 151
    return-void

    .line 152
    :goto_4
    monitor-exit p2

    .line 153
    throw p0

    .line 154
    :goto_5
    monitor-exit p0

    .line 155
    throw p1
.end method

.method public handlePersist()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/android/server/slice/DirtyTracker$Persistable;

    .line 19
    .line 20
    invoke-interface {v1}, Lcom/android/server/slice/DirtyTracker$Persistable;->getFileName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v2}, Lcom/android/server/slice/SlicePermissionManager;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    sget-object v5, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/util/Xml$Encoding;->name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-interface {v1, v4}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v1

    .line 62
    :try_start_3
    const-string v4, "SlicePermissionManager"

    .line 63
    .line 64
    const-string v5, "Failed to save access file, restoring backup"

    .line 65
    .line 66
    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catch_1
    move-exception v0

    .line 74
    const-string v1, "SlicePermissionManager"

    .line 75
    .line 76
    const-string v2, "Failed to save access file"

    .line 77
    .line 78
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    monitor-exit p0

    .line 82
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager;->mDirty:Landroid/util/ArraySet;

    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 86
    .line 87
    .line 88
    monitor-exit p0

    .line 89
    return-void

    .line 90
    :goto_1
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    throw v0
.end method

.method public final onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x1f4

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final readRestore(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x2

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    const-string/jumbo v0, "slice-access-list"

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto/16 :goto_3

    .line 26
    .line 27
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string/jumbo v0, "version"

    .line 38
    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static {p1, v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-ge v0, v2, :cond_2

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_2
    :goto_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eq v0, v1, :cond_6

    .line 54
    .line 55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-ne v0, v2, :cond_5

    .line 60
    .line 61
    const-string v0, "client"

    .line 62
    .line 63
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    const-wide/32 v3, 0x493e0

    .line 72
    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 81
    .line 82
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedClients:Landroid/util/ArrayMap;

    .line 84
    .line 85
    iget-object v7, v0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 86
    .line 87
    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 92
    .line 93
    .line 94
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/android/server/slice/SliceClientPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 97
    .line 98
    const/4 v6, 0x4

    .line 99
    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catchall_1
    move-exception p1

    .line 108
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    :try_start_4
    throw p1

    .line 110
    :cond_3
    const-string/jumbo v0, "provider"

    .line 111
    .line 112
    .line 113
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-static {p1, p0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 128
    .line 129
    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    :try_start_5
    iget-object v6, p0, Lcom/android/server/slice/SlicePermissionManager;->mCachedProviders:Landroid/util/ArrayMap;

    .line 131
    .line 132
    iget-object v7, v0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 133
    .line 134
    invoke-virtual {v6, v7, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 138
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 139
    .line 140
    .line 141
    iget-object v5, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/slice/SliceProviderPermissions;->mPkg:Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 144
    .line 145
    const/4 v6, 0x5

    .line 146
    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v5, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :catchall_2
    move-exception p1

    .line 155
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 156
    :try_start_8
    throw p1

    .line 157
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 158
    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_6
    monitor-exit p0

    .line 166
    return-void

    .line 167
    :goto_3
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 168
    throw p1
.end method

.method public final removePkg(ILjava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 2
    .line 3
    invoke-direct {v0, p2, p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getProvider(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    monitor-enter p2

    .line 11
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v2, p2, Lcom/android/server/slice/SliceProviderPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 20
    .line 21
    .line 22
    monitor-exit p2

    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;

    .line 38
    .line 39
    monitor-enter v1

    .line 40
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    .line 41
    .line 42
    iget-object v3, v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mPkgs:Landroid/util/ArraySet;

    .line 43
    .line 44
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit v1

    .line 48
    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    check-cast v3, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 63
    .line 64
    invoke-virtual {p0, v3}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    iget-object v4, v3, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 69
    .line 70
    new-instance v5, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    .line 71
    .line 72
    iget-object v6, v1, Lcom/android/server/slice/SliceProviderPermissions$SliceAuthority;->mAuthority:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v5, v6, p1}, Lcom/android/server/slice/SlicePermissionManager$PkgUser;-><init>(Ljava/lang/String;I)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    iget-object v4, v3, Lcom/android/server/slice/SliceClientPermissions;->mTracker:Lcom/android/server/slice/DirtyTracker;

    .line 84
    .line 85
    invoke-interface {v4, v3}, Lcom/android/server/slice/DirtyTracker;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    monitor-exit v1

    .line 91
    throw p0

    .line 92
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/slice/SlicePermissionManager;->getClient(Lcom/android/server/slice/SlicePermissionManager$PkgUser;)Lcom/android/server/slice/SliceClientPermissions;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-boolean p2, p1, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 97
    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    iget-object p2, p1, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    const/4 p2, 0x0

    .line 110
    iput-boolean p2, p1, Lcom/android/server/slice/SliceClientPermissions;->mHasFullAccess:Z

    .line 111
    .line 112
    iget-object p2, p1, Lcom/android/server/slice/SliceClientPermissions;->mAuths:Landroid/util/ArrayMap;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/util/ArrayMap;->clear()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p1}, Lcom/android/server/slice/SliceClientPermissions;->onPersistableDirty(Lcom/android/server/slice/DirtyTracker$Persistable;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 121
    .line 122
    const/4 p1, 0x3

    .line 123
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :catchall_1
    move-exception p0

    .line 132
    monitor-exit p2

    .line 133
    throw p0
.end method

.method public final writeBackup(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string/jumbo v0, "slice-access-list"

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 7
    .line 8
    .line 9
    const-string/jumbo v0, "version"

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x2

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-interface {p1, v1, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/android/server/slice/SlicePermissionManager$$ExternalSyntheticLambda0;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    iget-object v3, p0, Lcom/android/server/slice/SlicePermissionManager;->mHandler:Lcom/android/server/slice/SlicePermissionManager$H;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_7

    .line 44
    .line 45
    :cond_0
    :goto_0
    new-instance v3, Ljava/io/File;

    .line 46
    .line 47
    iget-object v4, p0, Lcom/android/server/slice/SlicePermissionManager;->mSliceDir:Ljava/io/File;

    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    array-length v4, v3

    .line 61
    const/4 v5, 0x0

    .line 62
    :goto_1
    if-ge v5, v4, :cond_5

    .line 63
    .line 64
    aget-object v6, v3, v5

    .line 65
    .line 66
    invoke-virtual {p0, v6}, Lcom/android/server/slice/SlicePermissionManager;->getParser(Ljava/lang/String;)Lcom/android/server/slice/SlicePermissionManager$ParserHolder;

    .line 67
    .line 68
    .line 69
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :goto_2
    :try_start_1
    iget-object v8, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 71
    .line 72
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    const/4 v9, 0x1

    .line 77
    if-eq v8, v9, :cond_3

    .line 78
    .line 79
    iget-object v8, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 80
    .line 81
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-ne v8, v2, :cond_2

    .line 86
    .line 87
    const-string v8, "client"

    .line 88
    .line 89
    iget-object v9, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 90
    .line 91
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v9

    .line 95
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_1

    .line 100
    .line 101
    iget-object v8, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 102
    .line 103
    invoke-static {v8, v0}, Lcom/android/server/slice/SliceClientPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceClientPermissions;

    .line 104
    .line 105
    .line 106
    move-result-object v8

    .line 107
    goto :goto_3

    .line 108
    :catchall_1
    move-exception p1

    .line 109
    goto :goto_5

    .line 110
    :cond_1
    iget-object v8, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 111
    .line 112
    invoke-static {v8, v0}, Lcom/android/server/slice/SliceProviderPermissions;->createFrom(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/slice/DirtyTracker;)Lcom/android/server/slice/SliceProviderPermissions;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    goto :goto_3

    .line 117
    :cond_2
    iget-object v8, v7, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 118
    .line 119
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_3
    move-object v8, v1

    .line 124
    :goto_3
    if-eqz v8, :cond_4

    .line 125
    .line 126
    invoke-interface {v8, p1}, Lcom/android/server/slice/DirtyTracker$Persistable;->writeTo(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :cond_4
    const-string v8, "SlicePermissionManager"

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v10, "Invalid or empty slice permissions file: "

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 150
    .line 151
    .line 152
    :goto_4
    :try_start_2
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    .line 154
    .line 155
    add-int/lit8 v5, v5, 0x1

    .line 156
    .line 157
    goto :goto_1

    .line 158
    :goto_5
    :try_start_3
    invoke-virtual {v7}, Lcom/android/server/slice/SlicePermissionManager$ParserHolder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 159
    .line 160
    .line 161
    goto :goto_6

    .line 162
    :catchall_2
    move-exception v0

    .line 163
    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 164
    .line 165
    .line 166
    :goto_6
    throw p1

    .line 167
    :cond_5
    const-string/jumbo v0, "slice-access-list"

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 171
    .line 172
    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 175
    :goto_7
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 176
    throw p1
.end method
