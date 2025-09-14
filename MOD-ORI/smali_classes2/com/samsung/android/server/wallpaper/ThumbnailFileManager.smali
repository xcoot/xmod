.class public final Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

.field public static final sRotationTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    filled-new-array {v2, v3, v0, v1}, [I

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sRotationTable:[I

    .line 10
    .line 11
    return-void
.end method

.method public static copyFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    invoke-static {v0, p0}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    .line 17
    .line 18
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19
    .line 20
    .line 21
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x1

    .line 25
    return p0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    goto :goto_3

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    :try_start_5
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_2
    move-exception p0

    .line 36
    :try_start_6
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 40
    :goto_1
    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :catchall_3
    move-exception p1

    .line 45
    :try_start_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    :goto_2
    throw p0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 49
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    const-string v0, "copyFile : e="

    .line 52
    .line 53
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const-string v0, "ThumbnailFileManager"

    .line 64
    .line 65
    invoke-static {v0, p1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    const/4 p0, 0x0

    .line 69
    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
    .locals 5

    .line 1
    const-class v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 5
    .line 6
    if-nez v1, :cond_2

    .line 7
    .line 8
    new-instance v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x5

    .line 15
    invoke-static {v3, v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->getThumbnailFile(II)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const-string v2, "LegacyThumbnailFileRemover"

    .line 27
    .line 28
    const-string/jumbo v4, "remove: legacy wallpaper thumbnail detected."

    .line 29
    .line 30
    .line 31
    invoke-static {v2, v4}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v3}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    .line 35
    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    .line 39
    .line 40
    .line 41
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 42
    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    const/16 v2, 0x11

    .line 46
    .line 47
    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    .line 48
    .line 49
    .line 50
    const/16 v2, 0x12

    .line 51
    .line 52
    invoke-static {v2}, Lcom/samsung/android/server/wallpaper/LegacyThumbnailFileRemover;->removeThumbnailFiles(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    sput-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v1

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    :goto_1
    sget-object v1, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sInstance:Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v0

    .line 63
    return-object v1

    .line 64
    :goto_2
    monitor-exit v0

    .line 65
    throw v1
.end method

.method public static getThumbnailDimensions(Ljava/io/File;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 9
    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {p0, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p0

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    const-string v2, "getThumbnailDimensions : e="

    .line 27
    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "ThumbnailFileManager"

    .line 39
    .line 40
    invoke-static {v2, v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    .line 44
    .line 45
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 46
    .line 47
    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 51
    .line 52
    .line 53
    return-object p0
.end method

.method public static getThumbnailFile(III)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string/jumbo v1, "wallpaper_thumbs"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/io/File;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance p0, Ljava/io/File;

    .line 23
    .line 24
    const-string v0, "_0"

    .line 25
    .line 26
    if-eqz p2, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    if-eq p2, v1, :cond_2

    .line 30
    .line 31
    const/4 v1, 0x2

    .line 32
    if-eq p2, v1, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x3

    .line 35
    if-eq p2, v1, :cond_0

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v2, "getFileNamePostfix: incorrect rotation("

    .line 40
    .line 41
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ")"

    .line 48
    .line 49
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const-string v1, "ThumbnailFileManager"

    .line 57
    .line 58
    invoke-static {v1, p2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-string v0, "_270"

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const-string v0, "_180"

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const-string v0, "_90"

    .line 69
    .line 70
    :cond_3
    :goto_0
    const-string/jumbo p2, "thumbnail"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ThumbnailFileManager"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string/jumbo v3, "moveFile : failed to move file from "

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p0, " to "

    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_0
    invoke-static {p1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-nez p0, :cond_1

    .line 50
    .line 51
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string/jumbo v0, "moveFile : restorecon failed - "

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-static {v2, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return v1

    .line 74
    :cond_1
    const/4 p0, 0x1

    .line 75
    return p0
.end method


# virtual methods
.method public final declared-synchronized deleteThumbnailFiles(II)Z
    .locals 10

    .line 1
    const-string v0, "deleteThumbnailFile: mode is not present. which="

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isModeAbsent(I)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p2, "ThumbnailFileManager"

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p2, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return v2

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    or-int/lit8 p1, v0, 0x1

    .line 45
    .line 46
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z

    .line 47
    .line 48
    .line 49
    or-int/lit8 p1, v0, 0x2

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return v3

    .line 56
    :cond_1
    :try_start_2
    new-instance v0, Ljava/io/File;

    .line 57
    .line 58
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const-string/jumbo v4, "wallpaper_thumbs"

    .line 63
    .line 64
    .line 65
    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Ljava/io/File;

    .line 69
    .line 70
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return v2

    .line 85
    :cond_2
    :try_start_3
    sget-object v0, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->sRotationTable:[I

    .line 86
    .line 87
    move v4, v2

    .line 88
    :goto_0
    const/4 v5, 0x4

    .line 89
    if-ge v4, v5, :cond_4

    .line 90
    .line 91
    aget v5, v0, v4

    .line 92
    .line 93
    invoke-static {p1, p2, v5}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 98
    .line 99
    .line 100
    move-result v7

    .line 101
    if-eqz v7, :cond_3

    .line 102
    .line 103
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    const-string v7, "ThumbnailFileManager"

    .line 108
    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v9, "deleteThumbnailFile: which="

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v9, ", rotation="

    .line 123
    .line 124
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string v5, ", success="

    .line 131
    .line 132
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v5

    .line 142
    invoke-static {v7, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-nez v6, :cond_3

    .line 146
    .line 147
    move v3, v2

    .line 148
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    .line 153
    .line 154
    monitor-exit p0

    .line 155
    return v3

    .line 156
    :goto_1
    monitor-exit p0

    .line 157
    throw p1
.end method

.method public final declared-synchronized writeThumbnailFile(IIILandroid/os/ParcelFileDescriptor;)Z
    .locals 9

    .line 1
    const-string/jumbo v0, "writeThumbnailFile : failed to delete temp thumbnail file - "

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "writeThumbnailFile: failed to create thumbnail dir - "

    .line 5
    .line 6
    .line 7
    const-string/jumbo v2, "writeThumbnailFile: which="

    .line 8
    .line 9
    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {v3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailDimensions(Ljava/io/File;)Landroid/graphics/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v5, "ThumbnailFileManager"

    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, ", userId="

    .line 30
    .line 31
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, ", rotation="

    .line 38
    .line 39
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p3, " dimensions = "

    .line 46
    .line 47
    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p3

    .line 57
    invoke-static {v5, p3}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    const/4 v2, 0x1

    .line 65
    if-eqz p3, :cond_0

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    const-wide/16 v7, 0x0

    .line 72
    .line 73
    cmp-long p3, v5, v7

    .line 74
    .line 75
    if-lez p3, :cond_0

    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/graphics/Rect;->isValid()Z

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_0

    .line 82
    .line 83
    const-string p1, "ThumbnailFileManager"

    .line 84
    .line 85
    const-string/jumbo p2, "writeThumbnailFile: thumbnail already exist. skip writing"

    .line 86
    .line 87
    .line 88
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return v2

    .line 93
    :catchall_0
    move-exception p1

    .line 94
    goto/16 :goto_0

    .line 95
    .line 96
    :cond_0
    :try_start_1
    new-instance p3, Ljava/io/File;

    .line 97
    .line 98
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    const-string/jumbo v4, "wallpaper_thumbs"

    .line 103
    .line 104
    .line 105
    invoke-direct {p3, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    new-instance p2, Ljava/io/File;

    .line 109
    .line 110
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p2, p3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const/4 p3, 0x0

    .line 122
    if-nez p1, :cond_1

    .line 123
    .line 124
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_1

    .line 129
    .line 130
    const-string p1, "ThumbnailFileManager"

    .line 131
    .line 132
    new-instance p4, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-static {p1, p2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .line 150
    .line 151
    monitor-exit p0

    .line 152
    return p3

    .line 153
    :cond_1
    :try_start_2
    new-instance p1, Ljava/io/File;

    .line 154
    .line 155
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v1, ".tmp"

    .line 168
    .line 169
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    invoke-static {p4, p1}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->copyFile(Landroid/os/ParcelFileDescriptor;Ljava/io/File;)Z

    .line 180
    .line 181
    .line 182
    move-result p2

    .line 183
    if-nez p2, :cond_3

    .line 184
    .line 185
    const-string p2, "ThumbnailFileManager"

    .line 186
    .line 187
    const-string/jumbo p4, "writeThumbnailFile : failed to copy remote thumbnail file"

    .line 188
    .line 189
    .line 190
    invoke-static {p2, p4}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 194
    .line 195
    .line 196
    move-result p2

    .line 197
    if-nez p2, :cond_2

    .line 198
    .line 199
    const-string p2, "ThumbnailFileManager"

    .line 200
    .line 201
    new-instance p4, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-static {p2, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    .line 219
    .line 220
    :cond_2
    monitor-exit p0

    .line 221
    return p3

    .line 222
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 223
    .line 224
    .line 225
    move-result p2

    .line 226
    if-eqz p2, :cond_4

    .line 227
    .line 228
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 229
    .line 230
    .line 231
    :cond_4
    invoke-static {p1, v3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->moveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 232
    .line 233
    .line 234
    move-result p2

    .line 235
    if-nez p2, :cond_5

    .line 236
    .line 237
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    .line 239
    .line 240
    monitor-exit p0

    .line 241
    return p3

    .line 242
    :cond_5
    monitor-exit p0

    .line 243
    return v2

    .line 244
    :goto_0
    monitor-exit p0

    .line 245
    throw p1
.end method
