.class public final Lcom/samsung/server/wallpaper/LegibilityColor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mAllowScreenRotateLock:Z

.field public mAllowScreenRotateSystem:Z

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mColorExtractors:Landroid/util/SparseArray;

.field public mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/samsung/server/wallpaper/LegibilityColor$1;

.field public final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 15
    .line 16
    new-instance v0, Lcom/samsung/server/wallpaper/LegibilityColor$1;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/LegibilityColor$1;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;Landroid/os/Looper;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mHandler:Lcom/samsung/server/wallpaper/LegibilityColor$1;

    .line 26
    .line 27
    const-string v0, "LegibilityColor"

    .line 28
    .line 29
    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 37
    .line 38
    return-void
.end method

.method public static getWallpaperColorPath(IIZ)Ljava/lang/String;
    .locals 4

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
    const-string/jumbo v1, "wallpaper_colors_info"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string v1, "LegibilityColor"

    .line 18
    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    const-string p0, "getWallpaperColorPath failed to mkdir"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v2, 0x1

    .line 41
    const/4 v3, 0x0

    .line 42
    if-ne v0, v2, :cond_1

    .line 43
    .line 44
    const-string v0, "/home"

    .line 45
    .line 46
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v2, 0x2

    .line 52
    if-ne v0, v2, :cond_2

    .line 53
    .line 54
    const-string v0, "/lock"

    .line 55
    .line 56
    invoke-static {p0, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string/jumbo v0, "unhandle type "

    .line 64
    .line 65
    .line 66
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    move-object p0, v3

    .line 80
    :goto_0
    if-eqz p2, :cond_3

    .line 81
    .line 82
    const-string p2, "_landscape"

    .line 83
    .line 84
    invoke-static {p0, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_8

    .line 93
    .line 94
    const/4 v0, 0x4

    .line 95
    if-ne p2, v0, :cond_4

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_4
    const/16 v0, 0x8

    .line 99
    .line 100
    if-ne p2, v0, :cond_5

    .line 101
    .line 102
    const-string p1, "_dex.xml"

    .line 103
    .line 104
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    goto :goto_2

    .line 109
    :cond_5
    const/16 v0, 0x10

    .line 110
    .line 111
    if-ne p2, v0, :cond_6

    .line 112
    .line 113
    const-string p1, "_sub.xml"

    .line 114
    .line 115
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    goto :goto_2

    .line 120
    :cond_6
    const/16 v0, 0x20

    .line 121
    .line 122
    if-ne p2, v0, :cond_7

    .line 123
    .line 124
    const-string p1, "_virtual.xml"

    .line 125
    .line 126
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    goto :goto_2

    .line 131
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string/jumbo p2, "unhandle mode "

    .line 134
    .line 135
    .line 136
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_8
    :goto_1
    const-string p1, "_phone.xml"

    .line 151
    .line 152
    invoke-static {p0, p1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    const-string p1, "getWallpaperColorPath, path = "

    .line 159
    .line 160
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-static {v1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    return-object v3
.end method


# virtual methods
.method public final allowScreenRotate(I)Z
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const-string v2, "accelerometer_rotation"

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-static {v1, v2, v3, p0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-nez p0, :cond_0

    .line 26
    .line 27
    move p0, v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p0, v3

    .line 30
    :goto_0
    if-eqz p0, :cond_1

    .line 31
    .line 32
    return v3

    .line 33
    :cond_1
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->WPAPER_SUPPORT_ROTATABLE_WALLPAPER:Z

    .line 34
    .line 35
    const-string v3, "LegibilityColor"

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_2

    .line 44
    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v0, "allowScreenRotate, allow rotate on tablet or dual main : "

    .line 48
    .line 49
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v1

    .line 63
    :cond_2
    if-ne v0, v1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 v1, 0x2

    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "allowScreenRoatate, unhandle type "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {v3, p1}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :goto_1
    return p0
.end method

.method public final extractColor(IZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getColorExtractor(IZ)Lcom/samsung/server/wallpaper/LegibilityColor$2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    new-array p2, p2, [Ljava/lang/Void;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string p2, "extractcolor: Error. "

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    const-string p1, "LegibilityColor"

    .line 34
    .line 35
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public final declared-synchronized getColorExtractor(IZ)Lcom/samsung/server/wallpaper/LegibilityColor$2;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/os/AsyncTask;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/AsyncTask;->isCancelled()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "LegibilityColor"

    .line 26
    .line 27
    const-string v3, "getColorExtractor cancel"

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string/jumbo v2, "makeColorExtractor: "

    .line 47
    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string v2, "LegibilityColor"

    .line 64
    .line 65
    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lcom/samsung/server/wallpaper/LegibilityColor$2;

    .line 69
    .line 70
    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/server/wallpaper/LegibilityColor$2;-><init>(Lcom/samsung/server/wallpaper/LegibilityColor;IZ)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mColorExtractors:Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit p0

    .line 79
    return-object v1

    .line 80
    :goto_2
    monitor-exit p0

    .line 81
    throw p1
.end method

.method public final initSemWallpaperColors(ILcom/samsung/server/wallpaper/SemWallpaperData;)V
    .locals 5

    .line 1
    const-string v0, "LegibilityColor"

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    const-string p0, "initSemWallpaperColors wallpaper == null"

    .line 6
    .line 7
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v1, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 12
    .line 13
    const-string v2, "initSemWallpaperColors which = "

    .line 14
    .line 15
    const-string v3, ", version = "

    .line 16
    .line 17
    invoke-static {v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v0, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_1

    .line 41
    .line 42
    return-void

    .line 43
    :cond_1
    const-string v3, "initSemWallpaperColors:"

    .line 44
    .line 45
    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-static {v0, v3}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->getXmlVersion(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-static {}, Landroid/app/SemWallpaperColors;->getDeviceVersion()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v3, v4, :cond_2

    .line 65
    .line 66
    const-string p1, "fota, calSemWallpaperColors"

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 72
    .line 73
    .line 74
    goto :goto_2

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {p1}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    .line 89
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getSeedColors()[I

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    array-length v3, v3

    .line 94
    if-gtz v3, :cond_3

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_3
    iput-object p1, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 98
    .line 99
    iget-object p1, p0, Lcom/samsung/server/wallpaper/LegibilityColor;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_4
    :goto_0
    const-string p1, "initSemWallpaperColors: SemWallpaperColor or its seed color is null. Extract color again!"

    .line 106
    .line 107
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :goto_1
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    .line 115
    .line 116
    if-eqz p2, :cond_5

    .line 117
    .line 118
    const-string p1, "fota, calcSemWallpaperColors"

    .line 119
    .line 120
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    const-string p2, "exception "

    .line 130
    .line 131
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :goto_2
    const-string p0, "initSemWallpaperColors done"

    .line 145
    .line 146
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method
