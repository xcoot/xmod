.class public final Lcom/android/server/om/OverlayManagerService$2;
.super Landroid/content/om/IOverlayManager$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public static $r8$lambda$brKP91vTER4zoSOxWJ1OnJjU4jQ(Lcom/android/server/om/OverlayManagerService;Landroid/content/pm/UserPackage;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static checkUserOrTrialPackageJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    const-string v1, "/data/overlays/jsonfiles/userjson"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const-string v2, "/"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    array-length v4, v1

    .line 28
    move v5, v3

    .line 29
    :goto_0
    if-ge v5, v4, :cond_1

    .line 30
    .line 31
    aget-object v6, v1, v5

    .line 32
    .line 33
    invoke-virtual {v6, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 66
    .line 67
    const-string v1, "/data/overlays/jsonfiles/trialjson"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_3

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    array-length v4, v1

    .line 89
    :goto_1
    if-ge v3, v4, :cond_3

    .line 90
    .line 91
    aget-object v5, v1, v3

    .line 92
    .line 93
    invoke-virtual {v5, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_2

    .line 98
    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    return-object p0

    .line 122
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_3
    const/4 p0, 0x0

    .line 126
    return-object p0
.end method

.method public static handleIncomingUser(ILjava/lang/String;)I
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    move v2, p0

    .line 13
    move-object v5, p1

    .line 14
    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static printJsonInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "current theme Json: "

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/io/FileInputStream;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    new-instance p1, Ljava/io/InputStreamReader;

    .line 16
    .line 17
    invoke-direct {p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 21
    .line 22
    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 23
    .line 24
    .line 25
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    .line 44
    .line 45
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const/4 v1, 0x3

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, "\n"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_1
    move-exception p0

    .line 87
    goto :goto_5

    .line 88
    :catchall_2
    move-exception p0

    .line 89
    goto :goto_3

    .line 90
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_3
    move-exception v1

    .line 95
    :try_start_6
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 99
    :goto_3
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :catchall_4
    move-exception p1

    .line 104
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    :goto_4
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 108
    :goto_5
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :catchall_5
    move-exception p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :goto_6
    throw p0
.end method


# virtual methods
.method public final addOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lcom/android/server/om/OverlayManagerServiceExt;->getSafeStream(Ljava/util/Collection;)Ljava/util/stream/Stream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/stream/Stream;

    .line 33
    .line 34
    new-instance v2, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-direct {v2, p0, p3, p2, v3}, Lcom/android/server/om/OverlayManagerServiceExt$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerServiceExt;ILandroid/content/om/ISamsungOverlayCallback;I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    check-cast p2, Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p0
.end method

.method public final applyThemeParkWallpaperColor(Landroid/net/Uri;)V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1, v0, p1}, Landroid/content/om/wallpapertheme/TemplateManager;->loadTemplateFromUri(Landroid/content/Context;Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    .line 38
    .line 39
    const/16 v3, 0x400

    .line 40
    .line 41
    new-array v3, v3, [B

    .line 42
    .line 43
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    const/4 v5, -0x1

    .line 48
    const/4 v6, 0x0

    .line 49
    if-eq v4, v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string v3, "UTF-8"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v2, "wallpaperColors"

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    move v2, v6

    .line 72
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-ge v2, v3, :cond_1

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optInt(I)I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :catchall_0
    move-exception p0

    .line 93
    goto :goto_2

    .line 94
    :cond_1
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p0, v0, v0, v6, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 96
    .line 97
    .line 98
    iput-boolean v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .line 100
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 101
    .line 102
    .line 103
    goto :goto_5

    .line 104
    :catch_0
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :goto_2
    if-eqz p1, :cond_2

    .line 107
    .line 108
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_3
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 117
    :goto_4
    const-string p1, "SWT_WTM_Wrapper"

    .line 118
    .line 119
    const-string v0, "Failed at applyThemeParkWallpaperColor, e = "

    .line 120
    .line 121
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    .line 123
    .line 124
    :goto_5
    return-void
.end method

.method public final applyWallpaperColor(Ljava/util/List;Ljava/util/List;Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final applyWallpaperColors(Ljava/util/List;II)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance p2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string p3, "(Deprecated) invoked applyWallpaperColors, colors="

    .line 11
    .line 12
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "SWT_WTM_Wrapper"

    .line 23
    .line 24
    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {p0, p1, p1, p2, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final changeOverlayState(Ljava/lang/String;IZ)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_5

    .line 24
    .line 25
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/om/OverlayIdentifier;

    .line 31
    .line 32
    invoke-direct {v4, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 36
    .line 37
    .line 38
    move-result-object p1
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-static {p1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    if-eqz v4, :cond_4

    .line 44
    .line 45
    iget-object v5, v4, Landroid/content/om/OverlayInfoExt;->info:Landroid/content/om/OverlayInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    if-nez v5, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    :try_start_3
    invoke-virtual {v4}, Landroid/content/om/OverlayInfoExt;->getOverlayIdentifier()Landroid/content/om/OverlayIdentifier;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {v3, p2, v4, p3}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Z

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/om/OverlayInfo;->getTargetPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerServiceExt$PMSHelperImpl;->packageManagerHelper:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 64
    .line 65
    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageStateForUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    if-nez p3, :cond_2

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-interface {p3}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :goto_0
    invoke-virtual {p0, v2, p1, v1, p2}, Lcom/android/server/om/OverlayManagerServiceExt;->handleStateUpdate(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/om/CriticalOverlayInfo;II)I

    .line 77
    .line 78
    .line 79
    move-result p0
    :try_end_3
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    const/4 p1, 0x1

    .line 81
    if-eq p0, p1, :cond_3

    .line 82
    .line 83
    const/4 p2, 0x2

    .line 84
    if-ne p0, p2, :cond_4

    .line 85
    .line 86
    :cond_3
    move v1, p1

    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception p0

    .line 89
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :catch_1
    move-exception p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :cond_4
    :goto_1
    monitor-exit v0

    .line 98
    return v1

    .line 99
    :catchall_0
    move-exception p0

    .line 100
    goto :goto_2

    .line 101
    :cond_5
    monitor-exit v0

    .line 102
    return v1

    .line 103
    :goto_2
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 104
    throw p0
.end method

.method public final commit(Landroid/content/om/OverlayManagerTransaction;)V
    .locals 6

    .line 1
    const-string v0, "commit failed: "

    .line 2
    .line 3
    const-string v1, "OMS#commit "

    .line 4
    .line 5
    const-wide/32 v2, 0x4000000

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$2;->executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p1

    .line 33
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 37
    :try_start_3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    .line 41
    .line 42
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 43
    .line 44
    .line 45
    const-string p0, "OverlayManager"

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {p0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    .line 65
    .line 66
    new-instance p0, Ljava/lang/SecurityException;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 90
    .line 91
    .line 92
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    .line 95
    .line 96
    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x1

    .line 5
    new-instance v3, Lcom/android/server/om/DumpState;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput v1, v3, Lcom/android/server/om/DumpState;->mUserId:I

    .line 11
    .line 12
    move v4, v0

    .line 13
    :goto_0
    array-length v5, p3

    .line 14
    if-ge v4, v5, :cond_6

    .line 15
    .line 16
    aget-object v5, p3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_6

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v6

    .line 24
    if-lez v6, :cond_6

    .line 25
    .line 26
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    const/16 v7, 0x2d

    .line 31
    .line 32
    if-eq v6, v7, :cond_0

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 36
    .line 37
    const-string v7, "-a"

    .line 38
    .line 39
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string v7, "-h"

    .line 47
    .line 48
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    if-eqz v7, :cond_2

    .line 53
    .line 54
    const-string p0, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    .line 55
    .line 56
    const-string p1, "  Print debugging information about the overlay manager."

    .line 57
    .line 58
    const-string p3, "  With optional parameter PACKAGE, limit output to the specified"

    .line 59
    .line 60
    const-string v0, "  package. With optional parameter FIELD, limit output to"

    .line 61
    .line 62
    invoke-static {p2, p0, p1, p3, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p0, "  the value of that SettingsItem field. Field names are"

    .line 66
    .line 67
    const-string p1, "  case insensitive and out.println the m prefix can be omitted,"

    .line 68
    .line 69
    const-string p3, "  so the following are equivalent: mState, mstate, State, state."

    .line 70
    .line 71
    invoke-static {p2, p0, p1, p3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_2
    const-string v7, "--user"

    .line 76
    .line 77
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v7

    .line 81
    if-eqz v7, :cond_4

    .line 82
    .line 83
    array-length v5, p3

    .line 84
    if-lt v6, v5, :cond_3

    .line 85
    .line 86
    const-string p0, "Error: user missing argument"

    .line 87
    .line 88
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :cond_3
    :try_start_0
    aget-object v5, p3, v6

    .line 93
    .line 94
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iput v5, v3, Lcom/android/server/om/DumpState;->mUserId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    add-int/2addr v4, p1

    .line 101
    goto :goto_0

    .line 102
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    const-string p1, "Error: user argument is not a number: "

    .line 105
    .line 106
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    aget-object p1, p3, v6

    .line 110
    .line 111
    invoke-static {p0, p1, p2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_4
    const-string v4, "--verbose"

    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_5

    .line 122
    .line 123
    iput-boolean v2, v3, Lcom/android/server/om/DumpState;->mVerbose:Z

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_5
    const-string v4, "Unknown argument: "

    .line 127
    .line 128
    const-string v7, "; use -h for help"

    .line 129
    .line 130
    invoke-static {p2, v4, v5, v7}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :goto_1
    move v4, v6

    .line 134
    goto :goto_0

    .line 135
    :cond_6
    :goto_2
    array-length v5, p3

    .line 136
    if-ge v4, v5, :cond_11

    .line 137
    .line 138
    aget-object v5, p3, v4

    .line 139
    .line 140
    add-int/2addr v4, v2

    .line 141
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    .line 145
    .line 146
    .line 147
    move-result v6

    .line 148
    sparse-switch v6, :sswitch_data_0

    .line 149
    .line 150
    .line 151
    :goto_3
    move p1, v1

    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :sswitch_0
    const-string p1, "basecodepath"

    .line 155
    .line 156
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_7

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_7
    const/16 p1, 0x9

    .line 164
    .line 165
    goto/16 :goto_4

    .line 166
    .line 167
    :sswitch_1
    const-string/jumbo p1, "packagename"

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-nez p1, :cond_8

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    const/16 p1, 0x8

    .line 178
    .line 179
    goto/16 :goto_4

    .line 180
    .line 181
    :sswitch_2
    const-string p1, "isenabled"

    .line 182
    .line 183
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result p1

    .line 187
    if-nez p1, :cond_9

    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_9
    const/4 p1, 0x7

    .line 191
    goto :goto_4

    .line 192
    :sswitch_3
    const-string/jumbo p1, "state"

    .line 193
    .line 194
    .line 195
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_a

    .line 200
    .line 201
    goto :goto_3

    .line 202
    :cond_a
    const/4 p1, 0x6

    .line 203
    goto :goto_4

    .line 204
    :sswitch_4
    const-string p1, "category"

    .line 205
    .line 206
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    if-nez p1, :cond_b

    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_b
    const/4 p1, 0x5

    .line 214
    goto :goto_4

    .line 215
    :sswitch_5
    const-string p1, "ismutable"

    .line 216
    .line 217
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result p1

    .line 221
    if-nez p1, :cond_c

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_c
    const/4 p1, 0x4

    .line 225
    goto :goto_4

    .line 226
    :sswitch_6
    const-string/jumbo p1, "userid"

    .line 227
    .line 228
    .line 229
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result p1

    .line 233
    if-nez p1, :cond_d

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_d
    const/4 p1, 0x3

    .line 237
    goto :goto_4

    .line 238
    :sswitch_7
    const-string/jumbo v6, "priority"

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v6

    .line 245
    if-nez v6, :cond_10

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :sswitch_8
    const-string/jumbo p1, "targetpackagename"

    .line 249
    .line 250
    .line 251
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result p1

    .line 255
    if-nez p1, :cond_e

    .line 256
    .line 257
    goto :goto_3

    .line 258
    :cond_e
    move p1, v2

    .line 259
    goto :goto_4

    .line 260
    :sswitch_9
    const-string/jumbo p1, "targetoverlayablename"

    .line 261
    .line 262
    .line 263
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p1

    .line 267
    if-nez p1, :cond_f

    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_f
    move p1, v0

    .line 271
    :cond_10
    :goto_4
    packed-switch p1, :pswitch_data_0

    .line 272
    .line 273
    .line 274
    invoke-static {v5}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    iput-object v1, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    iput-object p1, v3, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    .line 289
    .line 290
    goto :goto_5

    .line 291
    :pswitch_0
    iput-object v5, v3, Lcom/android/server/om/DumpState;->mField:Ljava/lang/String;

    .line 292
    .line 293
    :cond_11
    :goto_5
    iget-object p1, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 294
    .line 295
    if-nez p1, :cond_12

    .line 296
    .line 297
    array-length p1, p3

    .line 298
    if-ge v4, p1, :cond_12

    .line 299
    .line 300
    aget-object p1, p3, v4

    .line 301
    .line 302
    invoke-static {p1}, Landroid/content/om/OverlayIdentifier;->fromString(Ljava/lang/String;)Landroid/content/om/OverlayIdentifier;

    .line 303
    .line 304
    .line 305
    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object p3

    .line 310
    iput-object p3, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 311
    .line 312
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object p1

    .line 316
    iput-object p1, v3, Lcom/android/server/om/DumpState;->mOverlayName:Ljava/lang/String;

    .line 317
    .line 318
    :cond_12
    const-string p1, "dump"

    .line 319
    .line 320
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 321
    .line 322
    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object p3

    .line 326
    const-string v1, "android.permission.DUMP"

    .line 327
    .line 328
    invoke-virtual {p3, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 332
    .line 333
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 334
    .line 335
    monitor-enter p1

    .line 336
    :try_start_1
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 337
    .line 338
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 339
    .line 340
    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 341
    .line 342
    .line 343
    iget-object p3, v3, Lcom/android/server/om/DumpState;->mPackageName:Ljava/lang/String;

    .line 344
    .line 345
    if-nez p3, :cond_13

    .line 346
    .line 347
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 348
    .line 349
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 350
    .line 351
    invoke-virtual {p3, p2, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 352
    .line 353
    .line 354
    goto :goto_6

    .line 355
    :catchall_0
    move-exception p0

    .line 356
    goto/16 :goto_c

    .line 357
    .line 358
    :cond_13
    :goto_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 360
    .line 361
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 362
    .line 363
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 364
    .line 365
    .line 366
    const-string p3, "\n Color palette history :"

    .line 367
    .line 368
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 369
    .line 370
    .line 371
    invoke-static {}, Landroid/content/om/wallpapertheme/ThemeUtil;->getLogText()Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    move-result-object p3

    .line 375
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 376
    .line 377
    .line 378
    sget-boolean p3, Lcom/samsung/android/rune/ResRune;->THEME_WALLPAPER_THEMING_DEBUG:Z

    .line 379
    .line 380
    if-eqz p3, :cond_14

    .line 381
    .line 382
    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 383
    .line 384
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 385
    .line 386
    .line 387
    const-string p3, "<ColorPalette Information>"

    .line 388
    .line 389
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    iget-object p3, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 393
    .line 394
    invoke-virtual {p3, p2}, Landroid/content/om/wallpapertheme/MetaDataManager;->dump(Ljava/io/PrintWriter;)V

    .line 395
    .line 396
    .line 397
    iget-object p1, p1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 398
    .line 399
    invoke-virtual {p1, p2}, Landroid/content/om/wallpapertheme/TemplateManager;->dump(Ljava/io/PrintWriter;)V

    .line 400
    .line 401
    .line 402
    :cond_14
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 403
    .line 404
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    const-string p3, "ThemeFramework Information:"

    .line 413
    .line 414
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string p3, "/data/overlays/main_packages"

    .line 418
    .line 419
    const-string v1, "current_sec_active_themepackage"

    .line 420
    .line 421
    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    const-string v3, "current_sec_appicon_theme_package"

    .line 426
    .line 427
    invoke-static {p1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object v3

    .line 431
    const-string/jumbo v4, "wallpapertheme_state"

    .line 432
    .line 433
    .line 434
    invoke-static {p1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    const-string v5, "/data/overlays/themepark/state_applied.txt"

    .line 439
    .line 440
    invoke-static {v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 441
    .line 442
    .line 443
    move-result v5

    .line 444
    const-string/jumbo v6, "wallpapertheme_color_isgray"

    .line 445
    .line 446
    .line 447
    invoke-static {p1, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    const-string/jumbo v7, "wallpapertheme_color"

    .line 452
    .line 453
    .line 454
    invoke-static {p1, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v7

    .line 458
    const-string v8, "colortheme_app_icon"

    .line 459
    .line 460
    invoke-static {p1, v8, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 461
    .line 462
    .line 463
    move-result p1

    .line 464
    new-instance v8, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v9, "current_theme_package : "

    .line 467
    .line 468
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    move-result-object v8

    .line 478
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    const-string v9, "current_app_icon_package : "

    .line 484
    .line 485
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 486
    .line 487
    .line 488
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    .line 490
    .line 491
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v3

    .line 495
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    new-instance v3, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    const-string/jumbo v8, "wallpapertheme_state : "

    .line 501
    .line 502
    .line 503
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    .line 517
    .line 518
    const-string/jumbo v4, "themepark theme is applied : "

    .line 519
    .line 520
    .line 521
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v3

    .line 531
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    const-string/jumbo v3, "wallpapertheme_color_isgray : "

    .line 535
    .line 536
    .line 537
    invoke-static {p2, v3, v6}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .line 539
    .line 540
    if-eqz v7, :cond_16

    .line 541
    .line 542
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 543
    .line 544
    .line 545
    move-result v3

    .line 546
    if-nez v3, :cond_16

    .line 547
    .line 548
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    sub-int/2addr v3, v2

    .line 553
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 554
    .line 555
    .line 556
    move-result-object v3

    .line 557
    const-string v4, ", "

    .line 558
    .line 559
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    new-instance v4, Ljava/util/ArrayList;

    .line 564
    .line 565
    array-length v5, v3

    .line 566
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 567
    .line 568
    .line 569
    array-length v5, v3

    .line 570
    :goto_7
    if-ge v0, v5, :cond_15

    .line 571
    .line 572
    aget-object v6, v3, v0

    .line 573
    .line 574
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 575
    .line 576
    .line 577
    move-result v6

    .line 578
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v6

    .line 582
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    .line 584
    .line 585
    add-int/2addr v0, v2

    .line 586
    goto :goto_7

    .line 587
    :catch_1
    move-exception v0

    .line 588
    goto :goto_8

    .line 589
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 590
    .line 591
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 592
    .line 593
    .line 594
    const-string/jumbo v2, "wallpapertheme_color(toHex) : "

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v0

    .line 607
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    goto :goto_9

    .line 611
    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 612
    .line 613
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 614
    .line 615
    .line 616
    const-string/jumbo v2, "wallpapertheme_color : "

    .line 617
    .line 618
    .line 619
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 630
    .line 631
    .line 632
    goto :goto_9

    .line 633
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 634
    .line 635
    .line 636
    new-instance v0, Ljava/lang/StringBuilder;

    .line 637
    .line 638
    const-string/jumbo v2, "wallpapertheme_color : "

    .line 639
    .line 640
    .line 641
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v0

    .line 651
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    .line 653
    .line 654
    :goto_9
    const-string v0, "colortheme_app_icon : "

    .line 655
    .line 656
    invoke-static {p2, v0, p1}, Lcom/android/server/accounts/AccountManagerServiceShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 657
    .line 658
    .line 659
    if-eqz v1, :cond_17

    .line 660
    .line 661
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 662
    .line 663
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .line 665
    .line 666
    const-string v0, "available theme content at "

    .line 667
    .line 668
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    const-string v0, " : "

    .line 675
    .line 676
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object p1

    .line 683
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    new-instance p1, Ljava/io/File;

    .line 687
    .line 688
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 689
    .line 690
    .line 691
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService$2;->dumpFilesInDir(Ljava/io/File;Ljava/io/PrintWriter;)V

    .line 692
    .line 693
    .line 694
    invoke-static {v1}, Lcom/android/server/om/OverlayManagerService$2;->checkUserOrTrialPackageJson(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    move-result-object p0

    .line 698
    if-eqz p0, :cond_18

    .line 699
    .line 700
    invoke-static {p2, p0}, Lcom/android/server/om/OverlayManagerService$2;->printJsonInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    goto :goto_b

    .line 704
    :catch_2
    move-exception p0

    .line 705
    goto :goto_a

    .line 706
    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .line 710
    .line 711
    const-string p1, "available theme content at "

    .line 712
    .line 713
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .line 715
    .line 716
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    .line 718
    .line 719
    const-string p1, " : "

    .line 720
    .line 721
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    .line 723
    .line 724
    const/4 p1, 0x0

    .line 725
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object p0

    .line 732
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 733
    .line 734
    .line 735
    goto :goto_b

    .line 736
    :goto_a
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 737
    .line 738
    .line 739
    :cond_18
    :goto_b
    return-void

    .line 740
    :goto_c
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 741
    throw p0

    .line 742
    nop

    .line 743
    :sswitch_data_0
    .sparse-switch
        -0x685a1e7c -> :sswitch_9
        -0x4a674a60 -> :sswitch_8
        -0x4577865c -> :sswitch_7
        -0x31d4cdda -> :sswitch_6
        -0x3188d944 -> :sswitch_5
        0x302bcfe -> :sswitch_4
        0x68ac491 -> :sswitch_3
        0x1a483ad7 -> :sswitch_2
        0x36391bd1 -> :sswitch_1
        0x64f6f963 -> :sswitch_0
    .end sparse-switch

    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    .line 768
    .line 769
    .line 770
    .line 771
    .line 772
    .line 773
    .line 774
    .line 775
    .line 776
    .line 777
    .line 778
    .line 779
    .line 780
    .line 781
    .line 782
    .line 783
    .line 784
    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final dumpFilesInDir(Ljava/io/File;Ljava/io/PrintWriter;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    array-length v0, p1

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    .line 17
    aget-object v2, p1, v1

    .line 18
    .line 19
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-wide/16 v4, 0x1000

    .line 34
    .line 35
    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 50
    .line 51
    invoke-virtual {v4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "   "

    .line 68
    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    new-instance v5, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 77
    .line 78
    const-string v4, "("

    .line 79
    .line 80
    const-string v6, ")"

    .line 81
    .line 82
    invoke-static {v5, v2, v4, v3, v6}, Landroid/hardware/soundtrigger/V2_3/OptionalModelParameterRange$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "()"

    .line 98
    .line 99
    invoke-static {p2, v2, v4, v3}, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 100
    .line 101
    .line 102
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method

.method public final enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 9
    .line 10
    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mActorEnforcer:Lcom/android/server/om/OverlayActorEnforcer;

    .line 25
    .line 26
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/android/server/om/OverlayActorEnforcer;->isAllowedActor(Ljava/lang/String;Landroid/content/om/OverlayInfo;II)Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    sget-object v1, Lcom/android/server/om/OverlayActorEnforcer$ActorState;->ALLOWED:Lcom/android/server/om/OverlayActorEnforcer$ActorState;

    .line 31
    .line 32
    if-ne p0, v1, :cond_0

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    .line 36
    .line 37
    const-string v2, "UID"

    .line 38
    .line 39
    const-string v3, " is not allowed to call "

    .line 40
    .line 41
    const-string v4, " for "

    .line 42
    .line 43
    invoke-static {p2, v2, v3, p3, v4}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result p3

    .line 51
    if-eqz p3, :cond_1

    .line 52
    .line 53
    const-string p3, ""

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    const-string p3, " in "

    .line 57
    .line 58
    invoke-static {v1, p3}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    :goto_1
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object p3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p3, " for user "

    .line 71
    .line 72
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, " because "

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    const-string p2, "OverlayManager"

    .line 103
    .line 104
    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    new-instance p0, Ljava/lang/SecurityException;

    .line 108
    .line 109
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    const-string p3, "Unable to retrieve overlay information for "

    .line 118
    .line 119
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0
.end method

.method public final executeAllRequests(Landroid/content/om/OverlayManagerTransaction;)V
    .locals 9

    .line 1
    const-string v0, "OverlayManager"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "commit "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    if-eqz p1, :cond_6

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 62
    .line 63
    if-eqz v1, :cond_0

    .line 64
    .line 65
    iget-object v1, v1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move-object v1, v4

    .line 75
    :goto_0
    if-eqz v1, :cond_1

    .line 76
    .line 77
    const-string v5, "SemWT_"

    .line 78
    .line 79
    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    move v1, v3

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move v1, v2

    .line 88
    :goto_1
    if-eqz v1, :cond_3

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 99
    .line 100
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 101
    .line 102
    if-eqz v5, :cond_2

    .line 103
    .line 104
    iget v7, v5, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 105
    .line 106
    const/4 v8, 0x2

    .line 107
    if-ne v7, v8, :cond_2

    .line 108
    .line 109
    move v7, v3

    .line 110
    goto :goto_2

    .line 111
    :catchall_0
    move-exception p0

    .line 112
    goto :goto_5

    .line 113
    :cond_2
    move v7, v2

    .line 114
    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerService;->unregisterColorThemeGG(Z)Ljava/util/Set;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz v5, :cond_4

    .line 119
    .line 120
    iget v5, v5, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 121
    .line 122
    if-ne v5, v3, :cond_4

    .line 123
    .line 124
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 125
    .line 126
    invoke-virtual {v3, v2}, Lcom/android/server/om/OverlayManagerService;->disableDynamicContrast(Z)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_3
    move-object v6, v4

    .line 131
    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction;->getRequests()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    if-eqz v2, :cond_5

    .line 140
    .line 141
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    check-cast v2, Landroid/content/om/OverlayManagerTransaction$Request;

    .line 146
    .line 147
    invoke-virtual {p0, v2, v1}, Lcom/android/server/om/OverlayManagerService$2;->executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;Z)Ljava/util/Set;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-static {v4, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    goto :goto_4

    .line 156
    :cond_5
    invoke-static {v6}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {v4, p1}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 165
    .line 166
    .line 167
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 169
    .line 170
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    .line 172
    .line 173
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 174
    .line 175
    .line 176
    monitor-exit v0

    .line 177
    return-void

    .line 178
    :catchall_1
    move-exception p0

    .line 179
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 180
    .line 181
    .line 182
    throw p0

    .line 183
    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    throw p0

    .line 185
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 186
    .line 187
    const-string/jumbo p1, "null transaction"

    .line 188
    .line 189
    .line 190
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw p0
.end method

.method public final executeRequest(Landroid/content/om/OverlayManagerTransaction$Request;Z)Ljava/util/Set;
    .locals 8

    .line 1
    const-string/jumbo v0, "unsupported request: "

    .line 2
    .line 3
    .line 4
    const-string v1, "Transaction contains a null request"

    .line 5
    .line 6
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 10
    .line 11
    const-string v2, "Transaction overlay identifier must be non-null"

    .line 12
    .line 13
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x3

    .line 24
    const/4 v5, 0x2

    .line 25
    if-eq v2, v5, :cond_2

    .line 26
    .line 27
    if-ne v2, v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    iget v1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz p2, :cond_1

    .line 41
    .line 42
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 43
    .line 44
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 45
    .line 46
    iget-object v2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    :try_start_0
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 52
    .line 53
    invoke-virtual {p2, v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 54
    .line 55
    .line 56
    move-result-object p2
    :try_end_0
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-object p2, v3

    .line 59
    :goto_0
    if-nez p2, :cond_1

    .line 60
    .line 61
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string p2, "OverlayInfo is not founded, skip request "

    .line 64
    .line 65
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string p1, "SWT_OverlayManager"

    .line 76
    .line 77
    invoke-static {p1, p0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Ljava/util/Set;->of()Ljava/util/Set;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    return-object p0

    .line 85
    :cond_1
    iget-object p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {p0, v1, p2, v2}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_2
    :goto_1
    iget p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 96
    .line 97
    const/4 v2, -0x1

    .line 98
    if-ne p2, v2, :cond_a

    .line 99
    .line 100
    const/16 p2, 0x7d0

    .line 101
    .line 102
    if-eq v1, p2, :cond_9

    .line 103
    .line 104
    iget-object p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 105
    .line 106
    invoke-virtual {p2}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 113
    .line 114
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 115
    .line 116
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    :try_start_1
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 120
    .line 121
    invoke-interface {v6, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    goto :goto_2

    .line 126
    :catch_1
    move-object v6, v3

    .line 127
    :goto_2
    invoke-static {v6, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    if-eqz v6, :cond_3

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string p1, "UID "

    .line 137
    .line 138
    const-string v0, " does own packagename "

    .line 139
    .line 140
    invoke-static {v1, p1, v0, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw p0

    .line 148
    :cond_4
    :goto_3
    move v1, v2

    .line 149
    :goto_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 150
    .line 151
    .line 152
    move-result-wide v6

    .line 153
    :try_start_2
    iget p2, p1, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    .line 154
    .line 155
    const/4 v2, 0x1

    .line 156
    if-eqz p2, :cond_8

    .line 157
    .line 158
    if-eq p2, v2, :cond_7

    .line 159
    .line 160
    if-eq p2, v5, :cond_6

    .line 161
    .line 162
    if-ne p2, v4, :cond_5

    .line 163
    .line 164
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 165
    .line 166
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 167
    .line 168
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 169
    .line 170
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Ljava/util/Set;

    .line 171
    .line 172
    .line 173
    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    goto :goto_5

    .line 180
    :cond_5
    :try_start_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 181
    .line 182
    new-instance p2, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    throw p0

    .line 198
    :cond_6
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    .line 199
    .line 200
    const-string p2, "fabricated_overlay"

    .line 201
    .line 202
    const-class v0, Landroid/os/FabricatedOverlayInternal;

    .line 203
    .line 204
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/os/FabricatedOverlayInternal;

    .line 209
    .line 210
    const-string/jumbo p2, "no fabricated overlay attached to request"

    .line 211
    .line 212
    .line 213
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 217
    .line 218
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->registerFabricatedOverlay(Landroid/os/FabricatedOverlayInternal;)Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 225
    .line 226
    .line 227
    return-object p0

    .line 228
    :cond_7
    :try_start_4
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 229
    .line 230
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 231
    .line 232
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 233
    .line 234
    const/4 p2, 0x0

    .line 235
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;

    .line 236
    .line 237
    .line 238
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 240
    .line 241
    .line 242
    return-object p0

    .line 243
    :cond_8
    :try_start_5
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 244
    .line 245
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 246
    .line 247
    iget-object v0, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 248
    .line 249
    invoke-virtual {p2, v1, v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;

    .line 250
    .line 251
    .line 252
    move-result-object p2

    .line 253
    invoke-static {v3, p2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 258
    .line 259
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 260
    .line 261
    iget-object p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    .line 262
    .line 263
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    invoke-static {p2, p0}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 268
    .line 269
    .line 270
    move-result-object p0

    .line 271
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->emptyIfNull(Ljava/util/Set;)Ljava/util/Set;

    .line 272
    .line 273
    .line 274
    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 275
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    .line 277
    .line 278
    return-object p0

    .line 279
    :goto_5
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object p0

    .line 287
    const-string p1, ""

    .line 288
    .line 289
    const-string p2, "202768292"

    .line 290
    .line 291
    filled-new-array {p2, p0, p1}, [Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    const p1, 0x534e4554

    .line 296
    .line 297
    .line 298
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 299
    .line 300
    .line 301
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 302
    .line 303
    const-string p1, "Non-root shell cannot fabricate overlays"

    .line 304
    .line 305
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    throw p0

    .line 309
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 310
    .line 311
    new-instance p2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v0, " unsupported for user "

    .line 324
    .line 325
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    iget p1, p1, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    .line 329
    .line 330
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object p1

    .line 337
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    throw p0
.end method

.method public final getAllOverlays(I)Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "OMS#getAllOverlays "

    .line 2
    .line 3
    const-wide/32 v1, 0x4000000

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "getAllOverlays"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 44
    .line 45
    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceExt;->getAllOverlaysInCategory(II)[Landroid/content/om/OverlayInfoExt;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    monitor-exit v0

    .line 29
    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    const/4 p0, 0x0

    .line 34
    new-array p0, p0, [Landroid/content/om/OverlayInfoExt;

    .line 35
    .line 36
    return-object p0

    .line 37
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw p0
.end method

.method public final getDefaultOverlayPackages()[Ljava/lang/String;
    .locals 5

    .line 1
    const-wide/32 v0, 0x4000000

    .line 2
    .line 3
    .line 4
    :try_start_0
    const-string v2, "OMS#getDefaultOverlayPackages"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 22
    .line 23
    .line 24
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 26
    .line 27
    iget-object v4, v4, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 30
    :try_start_2
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 31
    .line 32
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 35
    .line 36
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 41
    .line 42
    .line 43
    return-object p0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception p0

    .line 47
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 48
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 49
    :catchall_2
    move-exception p0

    .line 50
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 51
    .line 52
    .line 53
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 54
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public final getLastPalette(Ljava/util/List;Ljava/util/List;)Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    move-object v0, p0

    .line 15
    check-cast v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public final getOverlayForPath(Ljava/lang/String;I)Landroid/content/om/OverlayInfoExt;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    if-eqz p0, :cond_3

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 25
    .line 26
    invoke-virtual {p0, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_2

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    check-cast p2, Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Landroid/content/om/OverlayInfo;

    .line 65
    .line 66
    iget-object v3, v1, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    invoke-static {v1}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :cond_2
    monitor-exit v0

    .line 79
    return-object v2

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    monitor-exit v0

    .line 83
    return-object v2

    .line 84
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0
.end method

.method public final getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p2}, Lcom/android/server/om/OverlayManagerService$2;->getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getOverlayInfoByIdentifier(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;
    .locals 5

    .line 1
    const-string v0, "OMS#getOverlayInfo "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/om/OverlayIdentifier;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 14
    .line 15
    .line 16
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "getOverlayInfo"

    .line 32
    .line 33
    invoke-static {p2, v0}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 43
    .line 44
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 52
    .line 53
    .line 54
    move-result-object v1
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :catch_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 57
    .line 58
    .line 59
    return-object v1

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 63
    :catchall_1
    move-exception p0

    .line 64
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_1
    :goto_0
    return-object v1
.end method

.method public final getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .locals 3

    .line 1
    const-string v0, "OMS#getOverlayInfosForTarget "

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const-wide/32 v1, 0x4000000

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "getOverlayInfosForTarget"

    .line 21
    .line 22
    invoke-static {p2, v0}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 36
    .line 37
    invoke-virtual {p0, p2, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    .line 44
    .line 45
    return-object p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 49
    :catchall_1
    move-exception p0

    .line 50
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getOverlaysForTarget(Ljava/lang/String;II)[Landroid/content/om/OverlayInfoExt;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz p0, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceExt;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 26
    .line 27
    invoke-virtual {p0, p3, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(ILjava/lang/String;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    if-eqz p3, :cond_1

    .line 45
    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    check-cast p3, Landroid/content/om/OverlayInfo;

    .line 51
    .line 52
    invoke-static {p3, p2}, Landroid/content/om/OverlayInfoExt;->isOverlayInfoExtOfCategory(Landroid/content/om/OverlayInfo;I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    invoke-static {p3}, Landroid/content/om/OverlayInfoExt;->initFromInfo(Landroid/content/om/OverlayInfo;)Landroid/content/om/OverlayInfoExt;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-array p0, v1, [Landroid/content/om/OverlayInfoExt;

    .line 67
    .line 68
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    check-cast p0, [Landroid/content/om/OverlayInfoExt;

    .line 73
    .line 74
    monitor-exit v0

    .line 75
    return-object p0

    .line 76
    :catchall_0
    move-exception p0

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    new-array p0, v1, [Landroid/content/om/OverlayInfoExt;

    .line 80
    .line 81
    return-object p0

    .line 82
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw p0
.end method

.method public final getPartitionOrder()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getPartitionOrder()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public final getThemeParkOverlayNames(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "getAllOverlays"

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    new-instance v0, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda1;-><init>(I)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    new-instance v0, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-direct {v0, p1, v1}, Lcom/android/server/om/OverlayManagerService$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    check-cast p0, Ljava/util/List;

    .line 63
    .line 64
    return-object p0
.end method

.method public final getWallpaperColors()Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/content/om/wallpapertheme/ThemePalette;->getPaletteSS()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public final invalidateCachesForOverlay(Ljava/lang/String;I)V
    .locals 5

    .line 1
    const-string v0, "invalidate caches for overlay \'"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v1, Landroid/content/om/OverlayIdentifier;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "invalidateCachesForOverlay"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const-string p2, "invalidateCachesForOverlay"

    .line 18
    .line 19
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    :try_start_0
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 27
    .line 28
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    :try_start_1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 34
    .line 35
    invoke-virtual {p0, v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapForOverlay(Landroid/content/om/OverlayIdentifier;I)V
    :try_end_1
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p0

    .line 42
    :try_start_2
    const-string p1, "OverlayManager"

    .line 43
    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, "\' failed"

    .line 53
    .line 54
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_0
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :goto_1
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 70
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    .line 74
    .line 75
    throw p0
.end method

.method public final isDefaultPartitionOrder()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mOverlayConfig:Lcom/android/internal/content/om/OverlayConfig;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->isDefaultPartitionOrder()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/Context;Landroid/content/om/IOverlayManager;)V

    .line 10
    .line 11
    .line 12
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    move-object v6, p5

    .line 18
    move-object v7, p6

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final readLastPalette()Ljava/util/List;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    const/16 v1, 0x41

    .line 24
    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return-object p0
.end method

.method public final removeOverlays(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceExt;->removeOverlaysInternal(Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/om/OverlayManagerServiceExt;->notifySystemServices(ILjava/util/List;Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
.end method

.method public final replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "com.samsung.android.permission.MODIFY_THEME"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 21
    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/om/OverlayManagerServiceExt;->replaceOverlays(Ljava/util/List;Ljava/util/List;Landroid/content/om/ISamsungOverlayCallback;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    :goto_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    throw p0
.end method

.method public final setEnabled(Ljava/lang/String;ZI)Z
    .locals 7

    .line 1
    const-string v0, "OMS#setEnabled "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 8
    .line 9
    .line 10
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " "

    .line 19
    .line 20
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string/jumbo p1, "setEnabled"

    .line 39
    .line 40
    .line 41
    invoke-static {p3, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    const-string/jumbo p3, "setEnabled"

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 52
    .line 53
    .line 54
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :try_start_1
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 56
    .line 57
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 58
    .line 59
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    :try_start_2
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 61
    .line 62
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 63
    .line 64
    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Set;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    .line 70
    .line 71
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 72
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 76
    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    return p0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :catchall_1
    move-exception p0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 85
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86
    .line 87
    .line 88
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 89
    .line 90
    .line 91
    return v1

    .line 92
    :goto_0
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 93
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 94
    :catchall_2
    move-exception p0

    .line 95
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 96
    .line 97
    .line 98
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 99
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 100
    .line 101
    .line 102
    throw p0
.end method

.method public final setEnabledExclusive(Ljava/lang/String;ZI)Z
    .locals 6

    .line 1
    const-string v0, "OMS#setEnabledExclusive "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " "

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance p2, Landroid/content/om/OverlayIdentifier;

    .line 36
    .line 37
    invoke-direct {p2, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string/jumbo p1, "setEnabledExclusive"

    .line 41
    .line 42
    .line 43
    invoke-static {p3, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    const-string/jumbo p3, "setEnabledExclusive"

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 58
    .line 59
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 60
    .line 61
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 62
    :try_start_2
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 71
    .line 72
    new-instance p2, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;

    .line 73
    .line 74
    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    .line 79
    .line 80
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    .line 86
    .line 87
    const/4 p0, 0x1

    .line 88
    return p0

    .line 89
    :catchall_0
    move-exception p0

    .line 90
    goto :goto_1

    .line 91
    :catchall_1
    move-exception p0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 95
    .line 96
    .line 97
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    .line 99
    .line 100
    return v1

    .line 101
    :goto_0
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 102
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 103
    :catchall_2
    move-exception p0

    .line 104
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    .line 106
    .line 107
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 108
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_1
    :goto_2
    return v1
.end method

.method public final setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .locals 8

    .line 1
    const-string v0, "OMS#setEnabledExclusiveInCategory "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "setEnabledExclusiveInCategory"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string/jumbo p2, "setEnabledExclusiveInCategory"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 47
    .line 48
    const/4 v7, 0x1

    .line 49
    invoke-virtual {v6, p1, v0, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(ILandroid/content/om/OverlayIdentifier;Z)Ljava/util/Optional;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 54
    .line 55
    new-instance v0, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .line 62
    .line 63
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    .line 69
    .line 70
    return v7

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :goto_0
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 84
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 85
    :catchall_2
    move-exception p0

    .line 86
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 90
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final setHighestPriority(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    const-string v0, "OMS#setHighestPriority "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "setHighestPriority"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string/jumbo p2, "setHighestPriority"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    :try_start_2
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 45
    .line 46
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 47
    .line 48
    invoke-virtual {v6, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {p0, p1, v1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 53
    .line 54
    .line 55
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 57
    .line 58
    .line 59
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x1

    .line 63
    return p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    goto :goto_1

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 69
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 70
    .line 71
    .line 72
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 73
    .line 74
    .line 75
    return v1

    .line 76
    :goto_0
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 77
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 78
    :catchall_2
    move-exception p0

    .line 79
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    .line 81
    .line 82
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 83
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 84
    .line 85
    .line 86
    throw p0
.end method

.method public final setLowestPriority(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    const-string v0, "OMS#setLowestPriority "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p1, "setLowestPriority"

    .line 23
    .line 24
    .line 25
    invoke-static {p2, p1}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const-string/jumbo p2, "setLowestPriority"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 36
    .line 37
    .line 38
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :try_start_1
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 40
    .line 41
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 44
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 45
    .line 46
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 47
    .line 48
    invoke-virtual {v6, v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 53
    .line 54
    new-instance v0, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    .line 61
    .line 62
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 63
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 67
    .line 68
    .line 69
    const/4 p0, 0x1

    .line 70
    return p0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    :try_start_5
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 76
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 80
    .line 81
    .line 82
    return v1

    .line 83
    :goto_0
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 84
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 85
    :catchall_2
    move-exception p0

    .line 86
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    .line 88
    .line 89
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 90
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 91
    .line 92
    .line 93
    throw p0
.end method

.method public final setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .line 1
    const-string v0, "OMS#setPriority "

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    goto :goto_2

    .line 9
    :cond_0
    const-wide/32 v2, 0x4000000

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, " "

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Landroid/content/om/OverlayIdentifier;

    .line 41
    .line 42
    invoke-direct {p1, p2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string/jumbo p2, "setPriority"

    .line 46
    .line 47
    .line 48
    invoke-static {p3, p2}, Lcom/android/server/om/OverlayManagerService$2;->handleIncomingUser(ILjava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const-string/jumbo p3, "setPriority"

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, p2, v0, p3}, Lcom/android/server/om/OverlayManagerService$2;->enforceActor(ILandroid/content/om/OverlayIdentifier;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 63
    .line 64
    iget-object p3, p3, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 65
    .line 66
    monitor-enter p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 67
    :try_start_2
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 68
    .line 69
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 70
    .line 71
    invoke-virtual {v6, v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Landroid/content/om/OverlayIdentifier;Landroid/content/om/OverlayIdentifier;I)Ljava/util/Optional;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$2;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 76
    .line 77
    new-instance p2, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;

    .line 78
    .line 79
    invoke-direct {p2, p0}, Lcom/android/server/om/OverlayManagerService$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 83
    .line 84
    .line 85
    :try_start_3
    monitor-exit p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    :try_start_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    .line 88
    .line 89
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    .line 91
    .line 92
    const/4 p0, 0x1

    .line 93
    return p0

    .line 94
    :catchall_0
    move-exception p0

    .line 95
    goto :goto_1

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :catch_0
    :try_start_5
    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 99
    :try_start_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    .line 101
    .line 102
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 103
    .line 104
    .line 105
    return v1

    .line 106
    :goto_0
    :try_start_7
    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 107
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 108
    :catchall_2
    move-exception p0

    .line 109
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    .line 111
    .line 112
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 113
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_1
    :goto_2
    return v1
.end method
