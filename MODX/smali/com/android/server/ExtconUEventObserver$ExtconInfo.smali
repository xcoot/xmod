.class public final Lcom/android/server/ExtconUEventObserver$ExtconInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

.field public static final sLock:Ljava/lang/Object;


# instance fields
.field public final mDeviceTypes:Ljava/util/HashSet;

.field public final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    .line 1
    const-string v0, ""

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    iput-object v1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 13
    iput-object p1, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 15
    new-instance v1, Ljava/io/File;

    .line 17
    const-string v2, "/sys/class/extcon"

    .line 19
    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v2, Lcom/android/server/ExtconUEventObserver$ExtconInfo$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {v1, v2}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 30
    move-result-object v1

    .line 31
    array-length v2, v1

    .line 32
    const-string v3, "ExtconUEventObserver"

    .line 34
    if-nez v2, :cond_0

    .line 36
    const-string v2, "Unable to list cables in /sys/class/extcon/"

    .line 38
    const-string v4, ". This probably means the selinux policies need to be changed."

    .line 40
    invoke-static {v2, p1, v4, v3}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    array-length p1, v1

    .line 44
    const/4 v2, 0x0

    .line 45
    move v4, v2

    .line 46
    :goto_0
    if-ge v4, p1, :cond_1

    .line 48
    aget-object v5, v1, v4

    .line 50
    const/4 v6, 0x0

    .line 51
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 54
    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    :try_start_1
    new-instance v8, Ljava/io/File;

    .line 57
    const-string/jumbo v9, "name"

    .line 60
    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-static {v8, v2, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v5

    .line 67
    const-string v6, "\n"

    .line 69
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    const-string v6, "\r"

    .line 75
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    iget-object v6, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 81
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception v5

    .line 86
    move-object v6, v7

    .line 87
    goto :goto_1

    .line 88
    :catch_1
    move-exception v5

    .line 89
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    const-string v8, "Unable to read "

    .line 93
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v6, "/name. This probably means the selinux policies need to be changed."

    .line 101
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v6

    .line 108
    invoke-static {v3, v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 113
    goto :goto_0

    .line 114
    :cond_1
    return-void
.end method

.method public static getExtconInfoForTypes([Ljava/lang/String;)Ljava/util/List;
    .locals 10

    .line 1
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sLock:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->initExtconInfos()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    sget-object v1, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    move v4, v3

    .line 18
    :goto_0
    if-ge v4, v2, :cond_2

    .line 20
    aget-object v5, v1, v4

    .line 22
    array-length v6, p0

    .line 23
    move v7, v3

    .line 24
    :goto_1
    if-ge v7, v6, :cond_1

    .line 26
    aget-object v8, p0, v7

    .line 28
    iget-object v9, v5, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mDeviceTypes:Ljava/util/HashSet;

    .line 30
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 33
    move-result v8

    .line 34
    if-eqz v8, :cond_0

    .line 36
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    goto :goto_2

    .line 40
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-object v0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    throw p0
.end method

.method public static initExtconInfos()V
    .locals 7

    .line 1
    sget-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 8
    const-string v1, "/sys/class/extcon"

    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez v1, :cond_1

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, " exists "

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    const-string v3, " isDir "

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 48
    move-result v0

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, " but listFiles returns null.This probably means the selinux policies need to be changed."

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    const-string v1, "ExtconUEventObserver"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-array v0, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 68
    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 73
    array-length v3, v1

    .line 74
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 77
    array-length v3, v1

    .line 78
    move v4, v2

    .line 79
    :goto_0
    if-ge v4, v3, :cond_2

    .line 81
    aget-object v5, v1, v4

    .line 83
    new-instance v6, Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 85
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 88
    move-result-object v5

    .line 89
    invoke-direct {v6, v5}, Lcom/android/server/ExtconUEventObserver$ExtconInfo;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v4, v4, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-array v1, v2, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 103
    move-result-object v0

    .line 104
    check-cast v0, [Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 106
    sput-object v0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->sExtconInfos:[Lcom/android/server/ExtconUEventObserver$ExtconInfo;

    .line 108
    :goto_1
    return-void
.end method


# virtual methods
.method public final getDevicePath()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/ExtconUEventObserver$ExtconInfo;->mName:Ljava/lang/String;

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-string v1, "/sys/class/extcon/%s"

    .line 6
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 9
    move-result-object v2

    .line 10
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljava/io/File;

    .line 16
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "/devices"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    move-result v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-object v0

    .line 43
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    const-string v3, "Could not get the extcon device path for "

    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object p0

    .line 57
    const-string v2, "ExtconUEventObserver"

    .line 59
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    return-object v0
.end method
