.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    if-eqz p2, :cond_4

    .line 12
    .line 13
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 26
    .line 27
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 28
    .line 29
    const-string v1, "SemWallpaperManagerService"

    .line 30
    .line 31
    const-string/jumbo v2, "onReceive: "

    .line 32
    .line 33
    .line 34
    const-string v3, ", densityDpi="

    .line 35
    .line 36
    invoke-static {v2, p1, v3}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 41
    .line 42
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 43
    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", orientation [old="

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 53
    .line 54
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 55
    .line 56
    const-string v3, ", new="

    .line 57
    .line 58
    const-string v4, "]"

    .line 59
    .line 60
    invoke-static {v2, p2, v3, v4, p1}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-static {v1, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 68
    .line 69
    iget v1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 70
    .line 71
    const/4 v2, 0x2

    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x0

    .line 74
    if-eq v1, v0, :cond_0

    .line 75
    .line 76
    iput v0, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 77
    .line 78
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 79
    .line 80
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->updateDisplayData()V

    .line 81
    .line 82
    .line 83
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_HOME_CONTROLLER:Z

    .line 84
    .line 85
    if-nez p1, :cond_0

    .line 86
    .line 87
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 90
    .line 91
    invoke-virtual {p1, v3, v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 97
    .line 98
    invoke-virtual {p1, v2, v4}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 102
    .line 103
    iget v0, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 104
    .line 105
    if-eq v0, p2, :cond_4

    .line 106
    .line 107
    iput p2, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 108
    .line 109
    sget-boolean p2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 110
    .line 111
    if-eqz p2, :cond_1

    .line 112
    .line 113
    iget-object p2, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 114
    .line 115
    iget p2, p2, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 116
    .line 117
    if-nez p2, :cond_1

    .line 118
    .line 119
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 120
    .line 121
    const/4 p2, 0x6

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 123
    .line 124
    .line 125
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;->this$0:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 126
    .line 127
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 128
    .line 129
    const/4 p1, 0x5

    .line 130
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->notifySemWallpaperColors(I)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_1
    iget-object p0, p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 137
    .line 138
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter p1

    .line 141
    :try_start_0
    const-string p2, "WallpaperManagerService"

    .line 142
    .line 143
    const-string/jumbo v0, "orientation is changed, notifySemColorListeners"

    .line 144
    .line 145
    .line 146
    invoke-static {p2, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 150
    .line 151
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 152
    .line 153
    iget-object v0, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 154
    .line 155
    iget-boolean v0, v0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateSystem:Z

    .line 156
    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 160
    .line 161
    invoke-virtual {p2, v3}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    .line 162
    .line 163
    .line 164
    move-result p2

    .line 165
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    if-eqz p2, :cond_2

    .line 176
    .line 177
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 178
    .line 179
    invoke-virtual {v0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catchall_0
    move-exception p0

    .line 184
    goto :goto_1

    .line 185
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 186
    .line 187
    iget-object p2, p2, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 188
    .line 189
    iget-object v0, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 190
    .line 191
    iget-boolean v0, v0, Lcom/samsung/server/wallpaper/LegibilityColor;->mAllowScreenRotateLock:Z

    .line 192
    .line 193
    if-eqz v0, :cond_3

    .line 194
    .line 195
    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 196
    .line 197
    invoke-virtual {p2, v2}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getFolderStateBasedWhich(I)I

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCurrentUserId()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    if-eqz p2, :cond_3

    .line 212
    .line 213
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 214
    .line 215
    invoke-virtual {p0, v4, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifySemColorListeners(ILcom/android/server/wallpaper/WallpaperData;)V

    .line 216
    .line 217
    .line 218
    :cond_3
    monitor-exit p1

    .line 219
    goto :goto_2

    .line 220
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    throw p0

    .line 222
    :cond_4
    :goto_2
    return-void
.end method
