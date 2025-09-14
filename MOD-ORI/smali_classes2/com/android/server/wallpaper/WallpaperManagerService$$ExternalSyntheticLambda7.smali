.class public final synthetic Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda7;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 9
    .line 10
    if-ne v2, p0, :cond_4

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 18
    .line 19
    iget-boolean v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    .line 20
    .line 21
    const/4 v5, 0x0

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 25
    .line 26
    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 27
    .line 28
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :cond_0
    :goto_0
    const/4 v3, 0x2

    .line 39
    invoke-virtual {v0, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 44
    .line 45
    iget-boolean v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    .line 46
    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    sget-object v4, Lcom/android/server/wallpaper/WallpaperData$BindSource;->SWITCH_WALLPAPER_UNLOCK_USER:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 50
    .line 51
    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mBindSource:Lcom/android/server/wallpaper/WallpaperData$BindSource;

    .line 52
    .line 53
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 57
    .line 58
    .line 59
    :cond_1
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 60
    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 64
    .line 65
    const/16 v4, 0x11

    .line 66
    .line 67
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 72
    .line 73
    or-int/lit8 v4, v4, 0x10

    .line 74
    .line 75
    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 76
    .line 77
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 78
    .line 79
    iget-boolean v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    .line 80
    .line 81
    if-eqz v4, :cond_2

    .line 82
    .line 83
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 84
    .line 85
    .line 86
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 87
    .line 88
    if-eqz v4, :cond_2

    .line 89
    .line 90
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 91
    .line 92
    iget v4, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 93
    .line 94
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 95
    .line 96
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 97
    .line 98
    .line 99
    :cond_2
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->VIRTUAL_DISPLAY_WALLPAPER:Z

    .line 100
    .line 101
    if-eqz v3, :cond_3

    .line 102
    .line 103
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 104
    .line 105
    iget-object v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 106
    .line 107
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mActiveVirtualDisplayId:I

    .line 108
    .line 109
    invoke-virtual {v3, v4}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;->isVirtualWallpaperDisplay(I)Z

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_3

    .line 114
    .line 115
    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    .line 116
    .line 117
    const/16 v4, 0x21

    .line 118
    .line 119
    invoke-virtual {v0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iget v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 124
    .line 125
    or-int/lit8 v4, v4, 0x20

    .line 126
    .line 127
    iput v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 128
    .line 129
    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 130
    .line 131
    iget-boolean v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWaitingForUnlockUser:Z

    .line 132
    .line 133
    if-eqz v4, :cond_3

    .line 134
    .line 135
    invoke-virtual {v0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 139
    .line 140
    iget v4, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 141
    .line 142
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 143
    .line 144
    invoke-virtual {v0, v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 145
    .line 146
    .line 147
    :cond_3
    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 148
    .line 149
    invoke-virtual {v3, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 150
    .line 151
    .line 152
    move-result v3

    .line 153
    if-nez v3, :cond_4

    .line 154
    .line 155
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    .line 156
    .line 157
    invoke-virtual {v0, p0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;

    .line 161
    .line 162
    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$$ExternalSyntheticLambda18;-><init>(I)V

    .line 163
    .line 164
    .line 165
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    .line 166
    .line 167
    .line 168
    move-result-object p0

    .line 169
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    .line 171
    .line 172
    :cond_4
    monitor-exit v1

    .line 173
    return-void

    .line 174
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    throw p0
.end method
