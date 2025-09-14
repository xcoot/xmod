.class public final Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final doPackagesChangedLocked(Lcom/android/server/wallpaper/WallpaperData;Z)Z
    .locals 5

    .line 1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x3

    .line 5
    const-string v3, "WallpaperManagerService"

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eq v0, v2, :cond_0

    .line 18
    .line 19
    if-ne v0, v1, :cond_3

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x1

    .line 22
    if-eqz p2, :cond_4

    .line 23
    .line 24
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 25
    .line 26
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 27
    .line 28
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 29
    .line 30
    invoke-virtual {p2, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    if-nez p2, :cond_4

    .line 35
    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v4, "Wallpaper uninstalled, removing: "

    .line 39
    .line 40
    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 44
    .line 45
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    invoke-static {v3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    const-string v4, "com.samsung.android.wallpaper.live"

    .line 62
    .line 63
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    const-string p2, "doPackagesChangedLocked : try to rebind"

    .line 70
    .line 71
    invoke-static {v3, p2}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 75
    .line 76
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 77
    .line 78
    iget p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 79
    .line 80
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 81
    .line 82
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->forceRebindWallpaper(II)V

    .line 83
    .line 84
    .line 85
    return v0

    .line 86
    :cond_1
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 87
    .line 88
    if-eqz p2, :cond_2

    .line 89
    .line 90
    const-string p2, "doPackagesChangedLocked : removeCallbacks"

    .line 91
    .line 92
    invoke-static {v3, p2}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 96
    .line 97
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 104
    .line 105
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 106
    .line 107
    invoke-virtual {p2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 111
    .line 112
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 113
    .line 114
    invoke-virtual {p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_3
    const/4 v0, 0x0

    .line 119
    :cond_4
    :goto_0
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 120
    .line 121
    const/4 v4, 0x0

    .line 122
    if-eqz p2, :cond_6

    .line 123
    .line 124
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eq p2, v2, :cond_5

    .line 133
    .line 134
    if-ne p2, v1, :cond_6

    .line 135
    .line 136
    :cond_5
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 137
    .line 138
    :cond_6
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 139
    .line 140
    const/high16 v1, 0xc0000

    .line 141
    .line 142
    if-eqz p2, :cond_7

    .line 143
    .line 144
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 145
    .line 146
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 147
    .line 148
    invoke-virtual {v2, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    if-nez p2, :cond_7

    .line 153
    .line 154
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 155
    .line 156
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eqz p2, :cond_7

    .line 165
    .line 166
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 167
    .line 168
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 175
    .line 176
    invoke-virtual {p2, v2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    const-string v2, "Wallpaper component gone, removing: "

    .line 183
    .line 184
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 188
    .line 189
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    invoke-static {v3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 200
    .line 201
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 202
    .line 203
    invoke-virtual {p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_1
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 207
    .line 208
    if-eqz p2, :cond_8

    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    if-eqz p2, :cond_8

    .line 219
    .line 220
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 221
    .line 222
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    .line 223
    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 229
    .line 230
    invoke-virtual {p0, p2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 231
    .line 232
    .line 233
    goto :goto_2

    .line 234
    :catch_1
    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    .line 235
    .line 236
    :cond_8
    :goto_2
    return v0
.end method

.method public final onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 11
    .line 12
    .line 13
    move-result p3

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eq p2, p3, :cond_0

    .line 16
    .line 17
    monitor-exit p1

    .line 18
    return v0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 22
    .line 23
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    array-length p3, p2

    .line 28
    move v1, v0

    .line 29
    :goto_0
    if-ge v0, p3, :cond_1

    .line 30
    .line 31
    aget-object v2, p2, v0

    .line 32
    .line 33
    invoke-virtual {p0, v2, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(Lcom/android/server/wallpaper/WallpaperData;Z)Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    or-int/2addr v1, v2

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    monitor-exit p1

    .line 42
    return v1

    .line 43
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_2

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 33
    .line 34
    if-eqz v5, :cond_1

    .line 35
    .line 36
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    const/4 v5, 0x1

    .line 47
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(Lcom/android/server/wallpaper/WallpaperData;Z)Z

    .line 48
    .line 49
    .line 50
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    monitor-exit v0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw p0
.end method

.method public final onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 13

    .line 1
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    monitor-exit p2

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto/16 :goto_1

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    array-length v1, v0

    .line 28
    const/4 v2, 0x0

    .line 29
    move v3, v2

    .line 30
    :goto_0
    if-ge v3, v1, :cond_2

    .line 31
    .line 32
    aget-object v11, v0, v3

    .line 33
    .line 34
    iget-object v12, v11, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 35
    .line 36
    if-eqz v12, :cond_1

    .line 37
    .line 38
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 47
    .line 48
    const-string v4, "WallpaperManagerService"

    .line 49
    .line 50
    new-instance v5, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v6, "Wallpaper "

    .line 56
    .line 57
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v6, " update has finished"

    .line 64
    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 76
    .line 77
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    const/4 v5, 0x0

    .line 83
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 84
    .line 85
    invoke-virtual {v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 86
    .line 87
    .line 88
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->PACKAGE_UPDATE_FINISHED:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 89
    .line 90
    iput-object v4, v11, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 91
    .line 92
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 93
    .line 94
    const/4 v7, 0x0

    .line 95
    const/4 v9, 0x0

    .line 96
    const/4 v10, 0x0

    .line 97
    const/4 v6, 0x0

    .line 98
    move-object v5, v12

    .line 99
    move-object v8, v11

    .line 100
    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v4, :cond_1

    .line 105
    .line 106
    const-string v4, "WallpaperManagerService"

    .line 107
    .line 108
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v6, "Wallpaper "

    .line 114
    .line 115
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v6, " no longer available; reverting to default"

    .line 122
    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 134
    .line 135
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 136
    .line 137
    invoke-virtual {v4, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 138
    .line 139
    .line 140
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    monitor-exit p2

    .line 144
    return-void

    .line 145
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    throw p0
.end method

.method public final onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p2

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    monitor-exit p2

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    array-length v0, p0

    .line 27
    const/4 v1, 0x0

    .line 28
    :goto_0
    if-ge v1, v0, :cond_2

    .line 29
    .line 30
    aget-object v2, p0, v1

    .line 31
    .line 32
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_1

    .line 45
    .line 46
    const-string v3, "WallpaperManagerService"

    .line 47
    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v5, "Wallpaper service "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v5, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 59
    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v5, " is updating"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    iput-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperData;->wallpaperUpdating:Z

    .line 77
    .line 78
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 87
    .line 88
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$$ExternalSyntheticLambda0;

    .line 89
    .line 90
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 91
    .line 92
    .line 93
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    monitor-exit p2

    .line 97
    return-void

    .line 98
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    throw p0
.end method

.method public final onSomePackagesChanged()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 7
    .line 8
    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eq v1, v2, :cond_0

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->-$$Nest$mgetWallpapers(Lcom/android/server/wallpaper/WallpaperManagerService;)[Lcom/android/server/wallpaper/WallpaperData;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    array-length v2, v1

    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    if-ge v3, v2, :cond_1

    .line 29
    .line 30
    aget-object v4, v1, v3

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    invoke-virtual {p0, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->doPackagesChangedLocked(Lcom/android/server/wallpaper/WallpaperData;Z)Z

    .line 34
    .line 35
    .line 36
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    return-void

    .line 41
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p0
.end method
