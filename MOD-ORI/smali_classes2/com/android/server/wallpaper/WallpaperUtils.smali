.class public abstract Lcom/android/server/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final sPerUserFiles:[Ljava/lang/String;

.field public static final sPerUserLockFiles:[Ljava/lang/String;

.field public static sWallpaperId:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    const-string/jumbo v10, "wallpaper_virtual_display"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v11, "wallpaper_virtualdisplay_info.xml"

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "wallpaper_orig"

    .line 8
    .line 9
    .line 10
    const-string/jumbo v1, "wallpaper"

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "wallpaper_info.xml"

    .line 14
    .line 15
    .line 16
    const-string/jumbo v3, "wallpaper_sub_display_orig"

    .line 17
    .line 18
    .line 19
    const-string/jumbo v4, "wallpaper_sub_display"

    .line 20
    .line 21
    .line 22
    const-string/jumbo v5, "wallpaper_subdisplay_info.xml"

    .line 23
    .line 24
    .line 25
    const-string/jumbo v6, "wallpaper_desktop_orig"

    .line 26
    .line 27
    .line 28
    const-string/jumbo v7, "wallpaper_desktop"

    .line 29
    .line 30
    .line 31
    const-string/jumbo v8, "wallpaper_desktop_info.xml"

    .line 32
    .line 33
    .line 34
    const-string/jumbo v9, "wallpaper_virtual_display_orig"

    .line 35
    .line 36
    .line 37
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    .line 42
    .line 43
    const-string/jumbo v5, "wallpaper_desktop_lock_orig"

    .line 44
    .line 45
    .line 46
    const-string/jumbo v6, "wallpaper_desktop_lock"

    .line 47
    .line 48
    .line 49
    const-string/jumbo v1, "wallpaper_lock_orig"

    .line 50
    .line 51
    .line 52
    const-string/jumbo v2, "wallpaper_lock"

    .line 53
    .line 54
    .line 55
    const-string/jumbo v3, "wallpaper_sub_display_lock_orig"

    .line 56
    .line 57
    .line 58
    const-string/jumbo v4, "wallpaper_sub_display_lock"

    .line 59
    .line 60
    .line 61
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserLockFiles:[Ljava/lang/String;

    .line 66
    .line 67
    return-void
.end method

.method public static getCropFileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v1, :cond_5

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/16 v1, 0x20

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    if-ne p0, v2, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "wallpaper_lock"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo p0, "wallpaper"

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    :cond_1
    if-ne p0, v2, :cond_2

    .line 33
    .line 34
    const-string p0, ""

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string/jumbo p0, "wallpaper_virtual_display"

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0

    .line 41
    :cond_3
    if-ne p0, v2, :cond_4

    .line 42
    .line 43
    const-string/jumbo p0, "wallpaper_sub_display_lock"

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const-string/jumbo p0, "wallpaper_sub_display"

    .line 48
    .line 49
    .line 50
    :goto_2
    return-object p0

    .line 51
    :cond_5
    if-ne p0, v2, :cond_6

    .line 52
    .line 53
    const-string/jumbo p0, "wallpaper_desktop_lock"

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    const-string/jumbo p0, "wallpaper_desktop"

    .line 58
    .line 59
    .line 60
    :goto_3
    return-object p0
.end method

.method public static getFileName(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    if-eq v0, v1, :cond_5

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    if-eq v0, v1, :cond_3

    .line 17
    .line 18
    const/16 v1, 0x20

    .line 19
    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    if-ne p0, v2, :cond_0

    .line 23
    .line 24
    const-string/jumbo p0, "wallpaper_lock_orig"

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string/jumbo p0, "wallpaper_orig"

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p0

    .line 32
    :cond_1
    if-ne p0, v2, :cond_2

    .line 33
    .line 34
    const-string p0, ""

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const-string/jumbo p0, "wallpaper_virtual_display_orig"

    .line 38
    .line 39
    .line 40
    :goto_1
    return-object p0

    .line 41
    :cond_3
    if-ne p0, v2, :cond_4

    .line 42
    .line 43
    const-string/jumbo p0, "wallpaper_sub_display_lock_orig"

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_4
    const-string/jumbo p0, "wallpaper_sub_display_orig"

    .line 48
    .line 49
    .line 50
    :goto_2
    return-object p0

    .line 51
    :cond_5
    if-ne p0, v2, :cond_6

    .line 52
    .line 53
    const-string/jumbo p0, "wallpaper_desktop_lock_orig"

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_6
    const-string/jumbo p0, "wallpaper_desktop_orig"

    .line 58
    .line 59
    .line 60
    :goto_3
    return-object p0
.end method

.method public static getInfoFileName(I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/16 v0, 0x10

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x20

    .line 14
    .line 15
    if-eq p0, v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo p0, "wallpaper_info.xml"

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    const-string/jumbo p0, "wallpaper_virtualdisplay_info.xml"

    .line 22
    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    const-string/jumbo p0, "wallpaper_subdisplay_info.xml"

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_2
    const-string/jumbo p0, "wallpaper_desktop_info.xml"

    .line 30
    .line 31
    .line 32
    return-object p0
.end method

.method public static getWallpaperFiles(I)Ljava/util/List;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    const/16 v4, 0xc

    .line 17
    .line 18
    if-ge v3, v4, :cond_0

    .line 19
    .line 20
    new-instance v4, Ljava/io/File;

    .line 21
    .line 22
    sget-object v5, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v5, v5, v3

    .line 25
    .line 26
    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    :goto_1
    const/4 v0, 0x6

    .line 36
    if-ge v2, v0, :cond_1

    .line 37
    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    sget-object v3, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserLockFiles:[Ljava/lang/String;

    .line 41
    .line 42
    aget-object v3, v3, v2

    .line 43
    .line 44
    invoke-direct {v0, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-object v1
.end method

.method public static getWallpaperLockDir(I)Ljava/io/File;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string/jumbo v1, "wallpaper_lock_images"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static makeWallpaperIdLocked()I
    .locals 1

    .line 1
    :cond_0
    sget v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sput v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return v0
.end method
