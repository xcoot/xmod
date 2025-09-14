.class public final synthetic Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v1, "SemWallpaperManagerService"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v3, "isHomeActivityVisible : "

    .line 13
    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 30
    .line 31
    const-string v1, "dispatchHomeVisibilityChanged: visible = "

    .line 32
    .line 33
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 39
    .line 40
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    if-eqz v10, :cond_3

    .line 48
    .line 49
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 52
    .line 53
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    iget-object v3, v10, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 59
    .line 60
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 61
    .line 62
    const/4 v4, 0x7

    .line 63
    const/4 v5, 0x0

    .line 64
    if-eq v3, v4, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v3, v10, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 68
    .line 69
    if-nez v3, :cond_1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-static {v3}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->isStockLiveWallpaperComponent(Landroid/content/ComponentName;)Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    :goto_0
    const-string v3, "WallpaperManagerService"

    .line 77
    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", connection = "

    .line 87
    .line 88
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 92
    .line 93
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", systemWallpaper = "

    .line 97
    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-static {v3, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    if-eqz p0, :cond_4

    .line 112
    .line 113
    if-eqz v5, :cond_4

    .line 114
    .line 115
    iget-object p0, v10, Lcom/android/server/wallpaper/WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    .line 116
    .line 117
    if-eqz p0, :cond_2

    .line 118
    .line 119
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 120
    .line 121
    if-nez p0, :cond_4

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    goto :goto_3

    .line 126
    :cond_2
    :goto_1
    const-string p0, "WallpaperManagerService"

    .line 127
    .line 128
    const-string v1, "dispatchHomeVisibilityChanged, try to rebind"

    .line 129
    .line 130
    invoke-static {p0, v1}, Lcom/samsung/server/wallpaper/Log;->addLogString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 134
    .line 135
    iget-object v7, v10, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 136
    .line 137
    const/4 v12, 0x0

    .line 138
    const/4 v8, 0x1

    .line 139
    const/4 v9, 0x1

    .line 140
    const/4 v11, 0x0

    .line 141
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_3
    const-string p0, "WallpaperManagerService"

    .line 146
    .line 147
    const-string v0, "dispatchHomeVisibilityChanged : rebind failed."

    .line 148
    .line 149
    invoke-static {p0, v0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    :goto_2
    monitor-exit v2

    .line 153
    return-void

    .line 154
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    throw p0
.end method
