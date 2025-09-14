.class public abstract Lcom/android/server/ProfileService;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final SERVICE_NAME:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field public packageBlockList:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static checkSafeToCreateProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "Feature is disabled because of exception: "

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v2

    .line 8
    new-instance v3, Ljava/io/File;

    .line 10
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 16
    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-eqz v3, :cond_1

    .line 19
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipFile;

    .line 21
    invoke-direct {p1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    :try_start_2
    const-string/jumbo v2, "primary.prof"

    .line 27
    invoke-virtual {p1, v2}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 33
    const-string v2, "Feature is disabled because base.dm has profile"

    .line 35
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    :try_start_3
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 41
    return v1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_4

    .line 44
    :catch_1
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :catchall_0
    move-exception v2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    :try_start_4
    const-string v2, "No primary.prof in base.dm"

    .line 50
    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 53
    :try_start_5
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    .line 56
    goto :goto_3

    .line 57
    :goto_0
    :try_start_6
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 60
    goto :goto_1

    .line 61
    :catchall_1
    move-exception p1

    .line 62
    :try_start_7
    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    :goto_1
    throw v2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    .line 66
    :goto_2
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v1

    .line 86
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string p1, ".prof"

    .line 96
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object p1

    .line 103
    new-instance v2, Ljava/io/File;

    .line 105
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_2

    .line 114
    const-string p1, "Feature is disabled because prebuilt profile already present"

    .line 116
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    .line 119
    return v1

    .line 120
    :cond_2
    :goto_3
    const/4 p0, 0x1

    .line 121
    return p0

    .line 122
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p1

    .line 138
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return v1
.end method


# virtual methods
.method public final apkHasNumOfDexFiles(ILjava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "Cannot read "

    .line 3
    const-string/jumbo v1, "classes"

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Landroid/util/jar/StrictJarFile;

    .line 10
    const/4 v5, 0x0

    .line 11
    invoke-direct {v4, p2, v5, v5}, Landroid/util/jar/StrictJarFile;-><init>(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    if-le p1, v2, :cond_0

    .line 21
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    move-object v3, v4

    .line 28
    goto :goto_3

    .line 29
    :catch_0
    move-exception p1

    .line 30
    move-object v3, v4

    .line 31
    goto :goto_2

    .line 32
    :cond_0
    const-string p1, ""

    .line 34
    :goto_0
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const-string p1, ".dex"

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {v4, p1}, Landroid/util/jar/StrictJarFile;->findEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 49
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    if-eqz p0, :cond_1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    move v2, v5

    .line 54
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 57
    :catch_1
    return v2

    .line 58
    :catchall_1
    move-exception p0

    .line 59
    goto :goto_3

    .line 60
    :catch_2
    move-exception p1

    .line 61
    :goto_2
    :try_start_3
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string p2, " for counting dex files, error: "

    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 86
    if-eqz v3, :cond_2

    .line 88
    :try_start_4
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 91
    :catch_3
    :cond_2
    return v2

    .line 92
    :goto_3
    if-eqz v3, :cond_3

    .line 94
    :try_start_5
    invoke-virtual {v3}, Landroid/util/jar/StrictJarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 97
    :catch_4
    :cond_3
    throw p0
.end method

.method public abstract checkAppId(I)Z
.end method

.method public final checkUserAndService(II)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/ProfileService;->isServiceRunning()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    if-gez p1, :cond_1

    .line 11
    const-string p2, "Invalid user id: "

    .line 13
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 19
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return v1

    .line 23
    :cond_1
    instance-of p1, p0, Lcom/android/server/pm/SpegService;

    .line 25
    const/4 v0, 0x1

    .line 26
    xor-int/2addr p1, v0

    .line 27
    if-eqz p1, :cond_2

    .line 29
    invoke-virtual {p0, p2}, Lcom/android/server/ProfileService;->checkAppId(I)Z

    .line 32
    move-result p0

    .line 33
    if-nez p0, :cond_2

    .line 35
    return v1

    .line 36
    :cond_2
    return v0
.end method

.method public abstract getBinderOfService()Landroid/os/IBinder;
.end method

.method public final initPackageBlockList(Ljava/lang/String;)Ljava/util/Set;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    iget-object p0, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 12
    if-eqz v1, :cond_2

    .line 14
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 16
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/io/BufferedReader;

    .line 21
    new-instance v3, Ljava/io/InputStreamReader;

    .line 23
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 28
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 37
    const-string v3, "#"

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    goto :goto_3

    .line 56
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    goto :goto_2

    .line 60
    :catchall_1
    move-exception v2

    .line 61
    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 64
    :goto_2
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 65
    :catch_0
    const-string v1, "Exception caught while reading "

    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    goto :goto_3

    .line 75
    :cond_2
    const-string v1, "Blocklist file "

    .line 77
    const-string v2, " does not exist"

    .line 79
    invoke-static {v1, p1, v2, p0}, Lcom/android/server/PinnerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_3
    return-object v0
.end method

.method public abstract initializeInterfaceOfService()V
.end method

.method public final isPackageBlockListed(Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/ProfileService;->packageBlockList:Ljava/util/Set;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    goto :goto_2

    .line 7
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v2, :cond_1

    .line 14
    :goto_0
    move v1, v3

    .line 15
    goto :goto_2

    .line 16
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    move-result-object v0

    .line 20
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_4

    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 32
    const-string v4, "*"

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v5

    .line 38
    if-nez v5, :cond_3

    .line 40
    goto :goto_1

    .line 41
    :cond_3
    const-string v5, "\\S+"

    .line 43
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 46
    move-result-object v4

    .line 47
    const-string v5, "."

    .line 49
    const-string v6, "\\."

    .line 51
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    :try_start_0
    invoke-virtual {p1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 58
    move-result v2
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v2, :cond_2

    .line 61
    goto :goto_0

    .line 62
    :catch_0
    const-string v4, "Invalid regular expression\'s syntax in pattern: "

    .line 64
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    iget-object v4, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    goto :goto_1

    .line 74
    :cond_4
    :goto_2
    return v1
.end method

.method public abstract isServiceRunning()Z
.end method

.method public onStart()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/ProfileService;->selectSuitableProfileService()V

    .line 4
    return-void
.end method

.method public final selectSuitableProfileService()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/ProfileService;->getBinderOfService()Landroid/os/IBinder;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    new-instance v1, Lcom/android/server/ProfileService$1;

    .line 9
    invoke-direct {v1, p0}, Lcom/android/server/ProfileService$1;-><init>(Lcom/android/server/ProfileService;)V

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    const/4 v0, 0x0

    .line 18
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/ProfileService;->SERVICE_NAME:Ljava/lang/String;

    .line 20
    iget-object v2, p0, Lcom/android/server/ProfileService;->TAG:Ljava/lang/String;

    .line 22
    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {p0, v0}, Lcom/android/server/ProfileService;->setInterfaceOfService(Landroid/os/IBinder;)V

    .line 27
    new-instance p0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v0, " found successfully"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, " not found; trying again"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Lcom/android/server/ProfileService$$ExternalSyntheticLambda0;

    .line 74
    invoke-direct {v1, p0}, Lcom/android/server/ProfileService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ProfileService;)V

    .line 77
    const-wide/16 v2, 0x3e8

    .line 79
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    :goto_1
    return-void
.end method

.method public abstract setInterfaceOfService(Landroid/os/IBinder;)V
.end method
