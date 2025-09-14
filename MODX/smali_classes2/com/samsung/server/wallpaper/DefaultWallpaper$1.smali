.class public final Lcom/samsung/server/wallpaper/DefaultWallpaper$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    goto/16 :goto_3

    .line 7
    .line 8
    :pswitch_1
    const-string p1, "DefaultWallpaper"

    .line 9
    .line 10
    const-string/jumbo v0, "msg MSG_UPDATE_DEFAULT_WALLPAPER"

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 17
    .line 18
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/SemWallpaperResourcesInfo;->isSupportCMF()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_5

    .line 29
    .line 30
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 33
    .line 34
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "WallpaperManagerService"

    .line 41
    .line 42
    const-string/jumbo v1, "rebindDefaultWallpaperIfNeeded: Change system wallpaper by color("

    .line 43
    .line 44
    .line 45
    const-string v2, ")"

    .line 46
    .line 47
    invoke-static {v1, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    .line 53
    .line 54
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->get(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x1

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    move-object v7, v0

    .line 78
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperData;Landroid/os/IRemoteCallback;Landroid/app/WallpaperInfo;)Z

    .line 79
    .line 80
    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 85
    .line 86
    iget-object v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 89
    .line 90
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 91
    .line 92
    invoke-virtual {v1, v0, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_0
    :goto_0
    const-string v0, "WallpaperManagerService"

    .line 100
    .line 101
    const-string/jumbo v1, "rebindDefaultWallpaperIfNeeded: Change lock wallpaper by color("

    .line 102
    .line 103
    .line 104
    const-string v2, ")"

    .line 105
    .line 106
    invoke-static {v1, p1, v2, v0}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 110
    .line 111
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 112
    .line 113
    const-string p1, "android_CMF"

    .line 114
    .line 115
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    const/4 v1, 0x6

    .line 120
    invoke-virtual {p0, v1, v0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_3

    .line 124
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 125
    .line 126
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    .line 130
    .line 131
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    .line 133
    .line 134
    const/high16 v0, 0x1000000

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    .line 142
    .line 143
    new-instance v1, Landroid/os/UserHandle;

    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 148
    .line 149
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 150
    .line 151
    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 155
    .line 156
    .line 157
    const-string p0, "DefaultWallpaper"

    .line 158
    .line 159
    const-string/jumbo p1, "send wallpaperChangedIntent"

    .line 160
    .line 161
    .line 162
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 167
    .line 168
    const-string v1, "lockscreen_wallpaper_transparent"

    .line 169
    .line 170
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_1

    .line 175
    .line 176
    const-string v1, "dex_lockscreen_wallpaper_transparency"

    .line 177
    .line 178
    goto :goto_1

    .line 179
    :cond_1
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    const-string/jumbo v1, "sub_display_lockscreen_wallpaper_transparency"

    .line 186
    .line 187
    .line 188
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 189
    .line 190
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 191
    .line 192
    invoke-static {p0, p1, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :pswitch_4
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 197
    .line 198
    const-string v1, "android.wallpaper.settings_systemui_transparency"

    .line 199
    .line 200
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isDex(I)Z

    .line 201
    .line 202
    .line 203
    move-result v2

    .line 204
    if-eqz v2, :cond_3

    .line 205
    .line 206
    const-string v1, "dex_system_wallpaper_transparency"

    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_3
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_4

    .line 214
    .line 215
    const-string/jumbo v1, "sub_display_system_wallpaper_transparency"

    .line 216
    .line 217
    .line 218
    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;->this$0:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 219
    .line 220
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 221
    .line 222
    invoke-static {p0, p1, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->-$$Nest$msetSettingsSystemUiTransparency(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_5
    :goto_3
    return-void

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
