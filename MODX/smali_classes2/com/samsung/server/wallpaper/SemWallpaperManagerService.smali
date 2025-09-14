.class public final Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final SHIPPED:Z

.field public static final sLogList:Ljava/util/ArrayList;

.field public static sSnapshotTestMode:Z


# instance fields
.field public mAodVisibilityState:I

.field public final mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

.field public final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

.field public final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field public mDensityDpi:I

.field public final mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mHandler:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

.field public final mHomeVisibilityListener:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

.field public final mImageWallpaper:Landroid/content/ComponentName;

.field public final mKnox:Lcom/samsung/server/wallpaper/Knox;

.field public final mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

.field public final mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

.field public final mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

.field public mOldUserId:I

.field public mOrientation:I

.field public final mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

.field public final mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

.field public final mSnapshotDataLock:Ljava/lang/Object;

.field public final mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

.field public final mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

.field public final mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-boolean v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;Landroid/app/SemWallpaperResourcesInfo;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, -0x2710

    .line 5
    .line 6
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 7
    .line 8
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOldUserId:I

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 24
    .line 25
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 28
    .line 29
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 30
    .line 31
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 34
    .line 35
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mAodVisibilityState:I

    .line 48
    .line 49
    new-instance v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-direct {v2, p0, v3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHandler:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$4;

    .line 59
    .line 60
    const-string v2, "SemWallpaperManagerService"

    .line 61
    .line 62
    invoke-static {v2, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 66
    .line 67
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 68
    .line 69
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 70
    .line 71
    new-instance v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 72
    .line 73
    invoke-direct {v2, p1, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;)V

    .line 74
    .line 75
    .line 76
    iput-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 77
    .line 78
    iput-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 79
    .line 80
    new-instance p3, Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 81
    .line 82
    invoke-direct {p3, p1, p2, p0, p4}, Lcom/samsung/server/wallpaper/DefaultWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    .line 83
    .line 84
    .line 85
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 86
    .line 87
    new-instance p3, Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 88
    .line 89
    invoke-direct {p3, p1, p0, p4}, Lcom/samsung/server/wallpaper/CMFWallpaper;-><init>(Landroid/content/Context;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;Landroid/app/SemWallpaperResourcesInfo;)V

    .line 90
    .line 91
    .line 92
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 93
    .line 94
    new-instance p3, Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 95
    .line 96
    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/OMCWallpaper;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    .line 97
    .line 98
    .line 99
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOMCWallpaper:Lcom/samsung/server/wallpaper/OMCWallpaper;

    .line 100
    .line 101
    const-string p3, "LockWallpaper"

    .line 102
    .line 103
    invoke-static {p3, p3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    new-instance p3, Lcom/samsung/server/wallpaper/DesktopMode;

    .line 107
    .line 108
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance p4, Landroid/os/Handler;

    .line 112
    .line 113
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {p4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    .line 119
    .line 120
    iput-boolean v1, p3, Lcom/samsung/server/wallpaper/DesktopMode;->mWallpaperBindingFallbackExecuted:Z

    .line 121
    .line 122
    const-string p4, "DesktopMode"

    .line 123
    .line 124
    invoke-static {p4, p4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDesktopMode:Lcom/samsung/server/wallpaper/DesktopMode;

    .line 128
    .line 129
    new-instance p3, Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 130
    .line 131
    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/SubDisplayMode;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V

    .line 132
    .line 133
    .line 134
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 135
    .line 136
    new-instance p3, Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 137
    .line 138
    invoke-direct {p3, p1, p2, p0}, Lcom/samsung/server/wallpaper/LegibilityColor;-><init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    .line 139
    .line 140
    .line 141
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 142
    .line 143
    new-instance p2, Lcom/samsung/server/wallpaper/Knox;

    .line 144
    .line 145
    invoke-direct {p2, p1}, Lcom/samsung/server/wallpaper/Knox;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mKnox:Lcom/samsung/server/wallpaper/Knox;

    .line 149
    .line 150
    const-class p2, Landroid/hardware/display/DisplayManager;

    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Landroid/hardware/display/DisplayManager;

    .line 157
    .line 158
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 159
    .line 160
    new-instance p3, Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 161
    .line 162
    invoke-direct {p3, p2}, Lcom/samsung/server/wallpaper/VirtualDisplayMode;-><init>(Landroid/hardware/display/DisplayManager;)V

    .line 163
    .line 164
    .line 165
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mVirtualDisplayMode:Lcom/samsung/server/wallpaper/VirtualDisplayMode;

    .line 166
    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    const p3, 0x104064e

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 183
    .line 184
    invoke-static {p1}, Landroid/app/WallpaperManager;->getCmfDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 185
    .line 186
    .line 187
    move-result-object p3

    .line 188
    if-nez p3, :cond_0

    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_0
    move-object p2, p3

    .line 192
    :goto_0
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 193
    .line 194
    new-instance p2, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 195
    .line 196
    new-instance p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    .line 197
    .line 198
    invoke-direct {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    .line 199
    .line 200
    .line 201
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 202
    .line 203
    .line 204
    iput-object p1, p2, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mContext:Landroid/content/Context;

    .line 205
    .line 206
    new-instance p4, Lcom/samsung/server/wallpaper/ProviderRequester;

    .line 207
    .line 208
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, p4, Lcom/samsung/server/wallpaper/ProviderRequester;->mContext:Landroid/content/Context;

    .line 216
    .line 217
    iput-object p4, p2, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/server/wallpaper/ProviderRequester;

    .line 218
    .line 219
    iput-object p3, p2, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mCallback:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$1;

    .line 220
    .line 221
    iput-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 228
    .line 229
    .line 230
    move-result-object p2

    .line 231
    iget p3, p2, Landroid/content/res/Configuration;->densityDpi:I

    .line 232
    .line 233
    iput p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDensityDpi:I

    .line 234
    .line 235
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 236
    .line 237
    iput p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mOrientation:I

    .line 238
    .line 239
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 240
    .line 241
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 246
    .line 247
    if-nez p3, :cond_1

    .line 248
    .line 249
    new-instance p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 250
    .line 251
    invoke-direct {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    .line 252
    .line 253
    .line 254
    iput-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 255
    .line 256
    const-string p3, "activity"

    .line 257
    .line 258
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p3

    .line 262
    check-cast p3, Landroid/app/ActivityManager;

    .line 263
    .line 264
    iget-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mHomeVisibilityListener:Lcom/samsung/server/wallpaper/SemWallpaperManagerService$3;

    .line 265
    .line 266
    invoke-virtual {p3, v0, p4}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V

    .line 267
    .line 268
    .line 269
    :cond_1
    new-instance p3, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;

    .line 270
    .line 271
    invoke-direct {p3, p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$2;-><init>(Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V

    .line 272
    .line 273
    .line 274
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    return-void
.end method

.method public static buildCustompackParams(ILandroid/net/Uri;)Landroid/os/Bundle;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "/data/overlays/homewallpaper/"

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    const/4 v3, 0x1

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    :cond_1
    move v1, v3

    .line 52
    :cond_2
    const/4 p0, 0x0

    .line 53
    if-ne v1, v3, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v3, p0

    .line 57
    :goto_0
    const-string v1, "isMigration"

    .line 58
    .line 59
    invoke-virtual {p1, v1, p0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const-string v4, "isCustom"

    .line 64
    .line 65
    invoke-virtual {p1, v4, p0}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    new-instance p1, Landroid/os/Bundle;

    .line 70
    .line 71
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 72
    .line 73
    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    const-string p0, "USER.PACK."

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_4
    const-string p0, "MULTI.PACK."

    .line 80
    .line 81
    :goto_1
    if-eqz v3, :cond_5

    .line 82
    .line 83
    const-string v4, "02"

    .line 84
    .line 85
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    goto :goto_2

    .line 90
    :cond_5
    const-string v4, "01"

    .line 91
    .line 92
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    :goto_2
    const-string/jumbo v4, "name"

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, v4, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string/jumbo p0, "wallpaper_path"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string/jumbo p0, "screen"

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, p0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 115
    .line 116
    .line 117
    return-object p1
.end method

.method public static convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/BufferedReader;

    .line 2
    .line 3
    new-instance v1, Ljava/io/InputStreamReader;

    .line 4
    .line 5
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 6
    .line 7
    invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 11
    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const-string v3, "\n"

    .line 39
    .line 40
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0
.end method

.method public static getCallStackString()Ljava/lang/String;
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    array-length v4, v0

    .line 13
    if-ge v3, v4, :cond_1

    .line 14
    .line 15
    aget-object v4, v0, v3

    .line 16
    .line 17
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    const-string v5, "getCallStackString"

    .line 22
    .line 23
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    add-int/lit8 v2, v3, 0x1

    .line 30
    .line 31
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    array-length v3, v0

    .line 35
    sub-int/2addr v3, v2

    .line 36
    const/4 v4, 0x3

    .line 37
    if-ge v3, v4, :cond_2

    .line 38
    .line 39
    array-length v1, v0

    .line 40
    sub-int/2addr v1, v2

    .line 41
    :cond_2
    const-string v3, ""

    .line 42
    .line 43
    move v4, v2

    .line 44
    move-object v5, v3

    .line 45
    :goto_1
    add-int v6, v2, v1

    .line 46
    .line 47
    if-ge v4, v6, :cond_4

    .line 48
    .line 49
    array-length v6, v0

    .line 50
    if-ge v4, v6, :cond_4

    .line 51
    .line 52
    aget-object v6, v0, v4

    .line 53
    .line 54
    if-ne v4, v2, :cond_3

    .line 55
    .line 56
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v8, " -> "

    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v8, "\n"

    .line 79
    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v5

    .line 90
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v8, "(line "

    .line 103
    .line 104
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v6, ") :"

    .line 115
    .line 116
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    add-int/lit8 v4, v4, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-lez v0, :cond_5

    .line 134
    .line 135
    const-string v0, "("

    .line 136
    .line 137
    const-string v1, ") "

    .line 138
    .line 139
    invoke-static {v0, v5, v1}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    :cond_5
    return-object v3
.end method

.method public static getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "getStringFromFile "

    .line 2
    .line 3
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance p0, Ljava/io/FileInputStream;

    .line 9
    .line 10
    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-static {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    move-exception v1

    .line 24
    :try_start_1
    const-string v2, "SemWallpaperManagerService"

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v2, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 46
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method

.method public static initializeThumnailFile(IIILcom/android/server/wallpaper/WallpaperData;)V
    .locals 4

    .line 1
    iget-object p3, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    const-string p0, "SemWallpaperManagerService"

    .line 6
    .line 7
    const-string p1, "initializeThumnailFile: SemWallpaperData is null."

    .line 8
    .line 9
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    if-ne p1, v1, :cond_9

    .line 20
    .line 21
    iget-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 22
    .line 23
    if-nez v1, :cond_9

    .line 24
    .line 25
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    new-instance v1, Ljava/io/File;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :goto_0
    if-eqz v0, :cond_2

    .line 45
    .line 46
    const-string/jumbo v3, "wallpaper_first_virtual"

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    const-string/jumbo v3, "wallpaper_first_virtual_home"

    .line 51
    .line 52
    .line 53
    :goto_1
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_3
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_6

    .line 64
    .line 65
    new-instance v1, Ljava/io/File;

    .line 66
    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    :goto_2
    if-eqz v0, :cond_5

    .line 79
    .line 80
    const-string/jumbo v3, "wallpaper_first_sub"

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const-string/jumbo v3, "wallpaper_first_sub_home"

    .line 85
    .line 86
    .line 87
    :goto_3
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 91
    .line 92
    goto :goto_6

    .line 93
    :cond_6
    new-instance v1, Ljava/io/File;

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    goto :goto_4

    .line 102
    :cond_7
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    :goto_4
    if-eqz v0, :cond_8

    .line 107
    .line 108
    const-string/jumbo v3, "wallpaper_first"

    .line 109
    .line 110
    .line 111
    goto :goto_5

    .line 112
    :cond_8
    const-string/jumbo v3, "wallpaper_first_home"

    .line 113
    .line 114
    .line 115
    :goto_5
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFirstFrameFile:Ljava/io/File;

    .line 119
    .line 120
    :cond_9
    :goto_6
    const/4 v1, 0x4

    .line 121
    if-ne p1, v1, :cond_b

    .line 122
    .line 123
    if-eqz v0, :cond_b

    .line 124
    .line 125
    iget-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 126
    .line 127
    if-nez v1, :cond_b

    .line 128
    .line 129
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_a

    .line 134
    .line 135
    new-instance v1, Ljava/io/File;

    .line 136
    .line 137
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    const-string/jumbo v3, "wallpaper_animated_background_sub"

    .line 142
    .line 143
    .line 144
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_a
    new-instance v1, Ljava/io/File;

    .line 151
    .line 152
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    const-string/jumbo v3, "wallpaper_animated_background"

    .line 157
    .line 158
    .line 159
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mAnimatedBackground:Ljava/io/File;

    .line 163
    .line 164
    :cond_b
    :goto_7
    const/4 v1, 0x1

    .line 165
    if-ne p1, v1, :cond_d

    .line 166
    .line 167
    if-eqz v0, :cond_d

    .line 168
    .line 169
    iget-object p1, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 170
    .line 171
    if-nez p1, :cond_d

    .line 172
    .line 173
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    if-eqz p0, :cond_c

    .line 178
    .line 179
    new-instance p0, Ljava/io/File;

    .line 180
    .line 181
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const-string/jumbo p2, "wallpaper_motion_background_sub"

    .line 186
    .line 187
    .line 188
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iput-object p0, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_c
    new-instance p0, Ljava/io/File;

    .line 195
    .line 196
    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    const-string/jumbo p2, "wallpaper_motion_background"

    .line 201
    .line 202
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iput-object p0, p3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mMotionBackground:Ljava/io/File;

    .line 207
    .line 208
    :cond_d
    :goto_8
    return-void
.end method

.method public static isSupportingMode(I)Z
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
    const/4 v2, 0x0

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/16 v1, 0x10

    .line 15
    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    return v2

    .line 24
    :cond_1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    if-ne p0, v0, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    :goto_0
    const/4 p0, 0x1

    .line 33
    return p0

    .line 34
    :cond_3
    return v2
.end method

.method public static putLog(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "SemWallpaperManagerService"

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sLogList:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    new-instance v3, Ljava/util/Date;

    .line 14
    .line 15
    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/text/SimpleDateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-virtual {v4, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, "."

    .line 35
    .line 36
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-wide/16 v5, 0x3e8

    .line 40
    .line 41
    rem-long/2addr v1, v5

    .line 42
    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, "\n"

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    const/16 v1, 0x14

    .line 77
    .line 78
    if-le p0, v1, :cond_0

    .line 79
    .line 80
    const/4 p0, 0x0

    .line 81
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catchall_0
    move-exception p0

    .line 86
    goto :goto_1

    .line 87
    :cond_0
    :goto_0
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    throw p0
.end method

.method public static removeLegibilityFields(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string/jumbo v0, "systemLegibilityColors"

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "lockLegibilityColors"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final buildParams(III)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p3, v0, :cond_2

    .line 9
    .line 10
    const/16 v0, 0x3e8

    .line 11
    .line 12
    if-eq p3, v0, :cond_0

    .line 13
    .line 14
    const-string p0, "buildParams: userId = "

    .line 15
    .line 16
    const-string v0, ", which = "

    .line 17
    .line 18
    const-string v1, ", type = "

    .line 19
    .line 20
    invoke-static {p1, p2, p0, v0, v1}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string p1, "SemWallpaperManagerService"

    .line 32
    .line 33
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    return-object p0

    .line 38
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string p2, "flag"

    .line 44
    .line 45
    const/4 p3, 0x1

    .line 46
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 50
    .line 51
    iget-object p2, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    const-string v0, "/"

    .line 60
    .line 61
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, p3

    .line 66
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    const-string/jumbo p3, "type"

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 77
    .line 78
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    const-string/jumbo p2, "screen"

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    return-object p1

    .line 89
    :cond_2
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 90
    .line 91
    iget-object p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 98
    .line 99
    invoke-static {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->buildCustompackParams(ILandroid/net/Uri;)Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    return-object p0
.end method

.method public final connectSnapshotForLiveWallpaper(IILjava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gtz v0, :cond_1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string/jumbo v2, "shouldCheckCorrespondingWhichForLiveWallpaper: Check existance of correspondingWhich ["

    .line 19
    .line 20
    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "]"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "SemWallpaperManagerService"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    xor-int/lit8 v1, p3, 0x1

    .line 50
    .line 51
    :goto_0
    if-eqz v1, :cond_9

    .line 52
    .line 53
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    if-gtz p3, :cond_2

    .line 58
    .line 59
    return-void

    .line 60
    :cond_2
    invoke-virtual {p0, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getSnapshotCount(I)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-gtz v0, :cond_3

    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    const/4 v3, 0x0

    .line 88
    if-eqz v2, :cond_5

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 95
    .line 96
    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-eqz v4, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_5
    move-object v2, v3

    .line 104
    :goto_1
    if-eqz v2, :cond_9

    .line 105
    .line 106
    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    invoke-virtual {v2, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_7

    .line 118
    .line 119
    return-void

    .line 120
    :cond_7
    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 133
    .line 134
    invoke-virtual {v1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 135
    .line 136
    .line 137
    move-result-object p0

    .line 138
    iget-object v0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 139
    .line 140
    if-eqz v0, :cond_8

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-lez v0, :cond_8

    .line 147
    .line 148
    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 149
    .line 150
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    move-object v3, p0

    .line 155
    check-cast v3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 156
    .line 157
    :cond_8
    invoke-virtual {v2, p3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    .line 158
    .line 159
    .line 160
    move-result p0

    .line 161
    const/4 v0, -0x1

    .line 162
    if-ne p0, v0, :cond_9

    .line 163
    .line 164
    iget p0, v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 165
    .line 166
    invoke-virtual {v3, p1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v2, p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 170
    .line 171
    .line 172
    nop

    .line 173
    :cond_9
    :goto_2
    return-void
.end method

.method public final deleteThumbnailFile(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getModeEnsuredWhich(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->deleteThumbnailFiles(II)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final doRestoreOrMigrate(II)Ljava/util/Map;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 10
    .line 11
    invoke-virtual {v2, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 43
    .line 44
    invoke-virtual {v5, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v5, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getIndex(I)I

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    add-int/lit8 v6, v6, -0x1

    .line 53
    .line 54
    :goto_1
    if-ltz v6, :cond_2

    .line 55
    .line 56
    invoke-virtual {v5, v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getByIndex(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    if-nez v7, :cond_0

    .line 61
    .line 62
    const-string v7, "SnapshotManager"

    .line 63
    .line 64
    const-string/jumbo v8, "shouldRestoreSnapshot: Something wrong!"

    .line 65
    .line 66
    .line 67
    invoke-static {v7, v8}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_0
    invoke-virtual {v7, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-eqz v7, :cond_1

    .line 76
    .line 77
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 78
    .line 79
    monitor-enter v7

    .line 80
    :try_start_1
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 81
    .line 82
    invoke-virtual {v5, p1, p2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->migrateToPriorSnapshot(III)V

    .line 83
    .line 84
    .line 85
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    const/16 v4, 0x3ec

    .line 87
    .line 88
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception p0

    .line 97
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    throw p0

    .line 99
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-virtual {p0, v4, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1, v4, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-virtual {p0, p1, v4, v2, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 110
    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    return-object v0

    .line 121
    :catchall_1
    move-exception p0

    .line 122
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 123
    throw p0
.end method

.method public final getCurrentImplicitMode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    .line 2
    .line 3
    iget p0, p0, Lcom/samsung/server/wallpaper/SubDisplayMode;->mLidState:I

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->determineMode(Z)I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method

.method public final getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/high16 v1, 0xc0000

    .line 20
    .line 21
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    const/4 p1, 0x0

    .line 26
    :cond_0
    :goto_0
    return-object p1
.end method

.method public final getDefaultWallpaperType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p1, p0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultWallpaperType(ILjava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final getDisplayId(I)I
    .locals 9

    .line 1
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-boolean v2, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 12
    .line 13
    const-string v3, "SemWallpaperManagerService"

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    move v1, v0

    .line 18
    goto :goto_3

    .line 19
    :cond_1
    new-instance v2, Landroid/view/DisplayInfo;

    .line 20
    .line 21
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 25
    .line 26
    const-string v4, "com.samsung.android.hardware.display.category.BUILTIN"

    .line 27
    .line 28
    invoke-virtual {p0, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    array-length v4, p0

    .line 33
    move v5, v1

    .line 34
    :goto_0
    if-ge v5, v4, :cond_8

    .line 35
    .line 36
    aget-object v6, p0, v5

    .line 37
    .line 38
    if-eqz v6, :cond_6

    .line 39
    .line 40
    invoke-virtual {v6, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    iget v6, v2, Landroid/view/DisplayInfo;->flags:I

    .line 48
    .line 49
    const/high16 v7, 0x40000

    .line 50
    .line 51
    and-int/2addr v6, v7

    .line 52
    if-eqz v6, :cond_3

    .line 53
    .line 54
    const/4 v6, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move v6, v1

    .line 57
    :goto_1
    if-eqz v0, :cond_4

    .line 58
    .line 59
    if-nez v6, :cond_5

    .line 60
    .line 61
    :cond_4
    if-nez v0, :cond_7

    .line 62
    .line 63
    if-nez v6, :cond_7

    .line 64
    .line 65
    :cond_5
    iget v1, v2, Landroid/view/DisplayInfo;->displayId:I

    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_6
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v8, "getDisplayId: failed to get display. display="

    .line 71
    .line 72
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v3, v6}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_7
    add-int/lit8 v5, v5, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_8
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v0, "getDisplayId: which="

    .line 91
    .line 92
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p1, ", displayId="

    .line 99
    .line 100
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return v1
.end method

.method public final getModeEnsuredWhich(I)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getCurrentImplicitMode()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getType(I)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    or-int/2addr p0, p1

    .line 17
    const-string p1, "getModeEnsuredWhich: detected which = "

    .line 18
    .line 19
    const-string v0, "SemWallpaperManagerService"

    .line 20
    .line 21
    invoke-static {p0, p1, v0}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return p0
.end method

.method public final getPairingConsideredWallpaperId(II)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 9
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekPairingConsideredWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    const/4 p0, -0x1

    .line 18
    return p0

    .line 19
    :cond_0
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 20
    .line 21
    return p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p0
.end method

.method public final getSnapshotCount(I)I
    .locals 2

    .line 1
    const/4 v0, -0x1

    .line 2
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 3
    .line 4
    if-ne p1, v0, :cond_0

    .line 5
    .line 6
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 7
    .line 8
    invoke-virtual {v1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 18
    .line 19
    invoke-virtual {v1, p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-lez v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    return v1
.end method

.method public final getThumbnailFile(III)Ljava/io/File;
    .locals 8

    .line 1
    const-string v0, "getThumbnailFile: wallpaper changed during fetching the thumbnail. which="

    .line 2
    .line 3
    invoke-static {}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getInstance()Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {p1, p2, p3}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->getThumbnailFile(III)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    const-wide/16 v5, 0x0

    .line 25
    .line 26
    cmp-long v3, v3, v5

    .line 27
    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getPairingConsideredWallpaperId(II)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    const-string v4, "getThumbnailFile: which="

    .line 36
    .line 37
    const-string v5, ", userId="

    .line 38
    .line 39
    const-string v6, ", wpId="

    .line 40
    .line 41
    invoke-static {p1, p2, v4, v5, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "SemWallpaperManagerService"

    .line 53
    .line 54
    invoke-static {v5, v4}, Lcom/samsung/server/wallpaper/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x0

    .line 58
    :try_start_0
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 59
    .line 60
    invoke-virtual {v7, p1, p2, p3}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->fetchThumbnailFile(III)Landroid/os/ParcelFileDescriptor;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    if-nez v7, :cond_2

    .line 65
    .line 66
    if-eqz v7, :cond_1

    .line 67
    .line 68
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_1
    :goto_0
    return-object v4

    .line 75
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getPairingConsideredWallpaperId(II)I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eq p0, v3, :cond_3

    .line 80
    .line 81
    new-instance p2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string p1, "->"

    .line 96
    .line 97
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-static {v5, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    :try_start_2
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    :try_start_3
    invoke-virtual {v1, p1, p2, p3, v7}, Lcom/samsung/android/server/wallpaper/ThumbnailFileManager;->writeThumbnailFile(IIILandroid/os/ParcelFileDescriptor;)Z

    .line 117
    .line 118
    .line 119
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    if-eqz p0, :cond_4

    .line 121
    .line 122
    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 123
    .line 124
    .line 125
    return-object v2

    .line 126
    :cond_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_4

    .line 130
    :goto_1
    :try_start_5
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catchall_1
    move-exception p1

    .line 135
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 139
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string p2, "getThumbnailFile: e="

    .line 142
    .line 143
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-static {v5, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    :goto_4
    return-object v4
.end method

.method public final getThumbnailFileDescriptor(III)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getThumbnailFile(III)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const/high16 p1, 0x10000000

    .line 9
    .line 10
    invoke-static {p0, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string p2, "getThumbnailFileDescriptor : e="

    .line 19
    .line 20
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string p1, "SemWallpaperManagerService"

    .line 31
    .line 32
    invoke-static {p1, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    return-object v0
.end method

.method public final getWallpaperTypeByComponentName(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperData;)I
    .locals 3

    .line 1
    const-string v0, "SemWallpaperManagerService"

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_3

    .line 14
    .line 15
    iget-object p1, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 16
    .line 17
    iget p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-ne p2, v1, :cond_0

    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {p2, p1}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;I)Z

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    if-nez p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    .line 39
    new-instance p1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string p2, "getWallpaperTypeByComponentName: Default live wallpaper = "

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 60
    .line 61
    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p0

    .line 65
    if-eqz p0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    .line 78
    .line 79
    if-eqz p0, :cond_3

    .line 80
    .line 81
    sget-boolean p0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_COVER_DISPLAY_WATCHFACE:Z

    .line 82
    .line 83
    if-eqz p0, :cond_3

    .line 84
    .line 85
    iget-object p0, p2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 86
    .line 87
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 88
    .line 89
    :cond_3
    :goto_0
    move v1, v2

    .line 90
    :cond_4
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string p1, "getWallpaperTypeByComponentName: wallpaperType = "

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p0

    .line 104
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return v1
.end method

.method public isSnapshotTestMode()Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    return p0

    .line 7
    :cond_0
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    .line 8
    .line 9
    return p0
.end method

.method public final isSystemAndLockPaired(II)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 8
    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 14
    .line 15
    invoke-static {p0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V
    .locals 7

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    if-ne p4, v0, :cond_11

    .line 4
    .line 5
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    iget-object v2, p4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 14
    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget v3, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 18
    .line 19
    :try_start_0
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 20
    .line 21
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {p1, p2, v1}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    iget-object v6, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 37
    .line 38
    iget-object v6, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 39
    .line 40
    iput-object v6, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    iget-object v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    array-length v5, v2

    .line 50
    if-lez v5, :cond_2

    .line 51
    .line 52
    aget-object v5, v2, v1

    .line 53
    .line 54
    if-eqz v5, :cond_2

    .line 55
    .line 56
    invoke-static {p1, p2, v0}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    aget-object v6, v2, v1

    .line 61
    .line 62
    invoke-virtual {v6, v5}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v4, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 66
    .line 67
    iput-object v2, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    move v3, v1

    .line 75
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 76
    .line 77
    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 78
    .line 79
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    .line 80
    .line 81
    monitor-enter v4

    .line 82
    :try_start_1
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    invoke-virtual {v2, p1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(II)V

    .line 87
    .line 88
    .line 89
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    iget-object v2, p3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 91
    .line 92
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v2, Ljava/util/HashMap;

    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    const-string v4, "lockscreen_wallpaper_sub"

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    const-string v4, "lockscreen_wallpaper"

    .line 116
    .line 117
    :goto_3
    iget-object v2, v2, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 118
    .line 119
    invoke-static {v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper$SettingsData;->getDefaultValue(Ljava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {v2, v4, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    check-cast v2, Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    goto :goto_4

    .line 138
    :cond_4
    move v2, v0

    .line 139
    :goto_4
    if-ne v2, v0, :cond_5

    .line 140
    .line 141
    goto :goto_5

    .line 142
    :cond_5
    invoke-virtual {p3, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    const/4 v4, -0x1

    .line 147
    if-ne v2, v4, :cond_6

    .line 148
    .line 149
    goto :goto_5

    .line 150
    :cond_6
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 151
    .line 152
    invoke-virtual {v4, p1, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    if-eqz v2, :cond_8

    .line 161
    .line 162
    invoke-virtual {v2, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-nez v5, :cond_7

    .line 167
    .line 168
    goto :goto_5

    .line 169
    :cond_7
    invoke-virtual {v2, v4, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, p2, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setLockscreenVisibility(II)V

    .line 173
    .line 174
    .line 175
    :cond_8
    :goto_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    :try_start_2
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 180
    .line 181
    invoke-static {p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->checkWhich(I)I

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    iget-object p3, p3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->perWhichSnapshots:Ljava/util/Map;

    .line 186
    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast p3, Ljava/util/HashMap;

    .line 192
    .line 193
    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object p3

    .line 197
    check-cast p3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;

    .line 198
    .line 199
    if-eqz p3, :cond_9

    .line 200
    .line 201
    iget-object p3, p3, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$PerWhichSnapshot;->settings:Ljava/util/Map;

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_9
    const/4 p3, 0x0

    .line 205
    :goto_6
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 206
    .line 207
    invoke-static {v2, p1, p3, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->updateSettings(Landroid/content/Context;ILjava/util/Map;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    .line 209
    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    .line 212
    .line 213
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 214
    .line 215
    .line 216
    move-result p3

    .line 217
    if-eqz p3, :cond_b

    .line 218
    .line 219
    const/4 p3, 0x3

    .line 220
    if-eq v3, p3, :cond_12

    .line 221
    .line 222
    const/16 p3, 0x3e8

    .line 223
    .line 224
    if-eq v3, p3, :cond_12

    .line 225
    .line 226
    const-string/jumbo p3, "trigger"

    .line 227
    .line 228
    .line 229
    const-string/jumbo p4, "snapshot"

    .line 230
    .line 231
    .line 232
    invoke-static {p3, p4}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 233
    .line 234
    .line 235
    move-result-object p3

    .line 236
    iget-object p4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 237
    .line 238
    check-cast p4, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 239
    .line 240
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    or-int/lit8 v0, v0, 0x2

    .line 248
    .line 249
    invoke-virtual {p4, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    if-eqz p1, :cond_a

    .line 254
    .line 255
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 256
    .line 257
    iget p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 258
    .line 259
    invoke-virtual {p4, p1, v0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 260
    .line 261
    .line 262
    :cond_a
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 263
    .line 264
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 265
    .line 266
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_8

    .line 270
    .line 271
    :cond_b
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 272
    .line 273
    .line 274
    move-result p3

    .line 275
    if-nez p3, :cond_f

    .line 276
    .line 277
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    .line 278
    .line 279
    .line 280
    move-result p3

    .line 281
    if-eqz p3, :cond_c

    .line 282
    .line 283
    goto :goto_7

    .line 284
    :cond_c
    const/4 p3, 0x7

    .line 285
    if-ne v3, p3, :cond_d

    .line 286
    .line 287
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 288
    .line 289
    check-cast p3, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 290
    .line 291
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    .line 292
    .line 293
    .line 294
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 295
    .line 296
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 297
    .line 298
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    .line 299
    .line 300
    .line 301
    goto/16 :goto_8

    .line 302
    .line 303
    :cond_d
    if-nez v3, :cond_12

    .line 304
    .line 305
    if-eqz p4, :cond_12

    .line 306
    .line 307
    invoke-virtual {p4, v3}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 308
    .line 309
    .line 310
    move-result-object p3

    .line 311
    if-eqz p3, :cond_e

    .line 312
    .line 313
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 314
    .line 315
    .line 316
    move-result p3

    .line 317
    if-nez p3, :cond_12

    .line 318
    .line 319
    :cond_e
    const-string p3, "SemWallpaperManagerService"

    .line 320
    .line 321
    const-string/jumbo p4, "postProcess: Restored wallpaper is image type with no file."

    .line 322
    .line 323
    .line 324
    invoke-static {p3, p4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 328
    .line 329
    check-cast p3, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 330
    .line 331
    invoke-virtual {p3, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifyWallpaperChanged(II)V

    .line 332
    .line 333
    .line 334
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 335
    .line 336
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 337
    .line 338
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestNotifySemWallpaperColors(I)V

    .line 339
    .line 340
    .line 341
    goto :goto_8

    .line 342
    :cond_f
    :goto_7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 343
    .line 344
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 345
    .line 346
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 347
    .line 348
    .line 349
    new-instance p3, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    const-string/jumbo p4, "requestNotifyCoverWallpaperChanged: userId = "

    .line 352
    .line 353
    .line 354
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    const-string p4, ", which = "

    .line 361
    .line 362
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p3

    .line 372
    const-string p4, "WallpaperManagerService"

    .line 373
    .line 374
    invoke-static {p4, p3}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    .line 378
    .line 379
    .line 380
    move-result p3

    .line 381
    if-nez p3, :cond_10

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->peekWallpaperDataLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    if-eqz p1, :cond_12

    .line 389
    .line 390
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 391
    .line 392
    iget p1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 393
    .line 394
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    .line 395
    .line 396
    .line 397
    goto :goto_8

    .line 398
    :catchall_0
    move-exception p0

    .line 399
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 400
    .line 401
    .line 402
    throw p0

    .line 403
    :catchall_1
    move-exception p0

    .line 404
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 405
    throw p0

    .line 406
    :cond_11
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 407
    .line 408
    .line 409
    move-result-wide p3

    .line 410
    :try_start_4
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 411
    .line 412
    invoke-static {v0, p1, p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->writeDefaultSettings(Landroid/content/Context;II)V

    .line 413
    .line 414
    .line 415
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 416
    .line 417
    check-cast p0, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 418
    .line 419
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getLastCallingPackage(I)Ljava/lang/String;

    .line 420
    .line 421
    .line 422
    move-result-object v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    const-string/jumbo v2, "requestClearWallpaper: lastCallingPackage = "

    .line 426
    .line 427
    .line 428
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    const-string v2, "WallpaperManagerService"

    .line 439
    .line 440
    invoke-static {v2, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {p0, v0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaper(Ljava/lang/String;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 444
    .line 445
    .line 446
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    .line 448
    .line 449
    :cond_12
    :goto_8
    return-void

    .line 450
    :catchall_2
    move-exception p0

    .line 451
    invoke-static {p3, p4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 452
    .line 453
    .line 454
    throw p0
.end method

.method public final putDefaultLiveWallpaperProperties(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 4
    .line 5
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultLiveWallpaperExtras(I)Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    .line 13
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string/jumbo v1, "putDefaultLiveWallpaperProperties: default extra data is not present. which="

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "SemWallpaperManagerService"

    .line 29
    .line 30
    invoke-static {v0, p0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const-string v0, "isPreloaded"

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 45
    .line 46
    iput-object p0, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 47
    .line 48
    iput-boolean v1, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 49
    .line 50
    return-void
.end method

.method public final removeSnapshotByKey(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 5
    .line 6
    iget v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 7
    .line 8
    invoke-virtual {v1, v2, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 13
    .line 14
    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    invoke-virtual {v2, v3, v4, p1, v1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    throw p0
.end method

.method public final removeSnapshotByWhich(I)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getWhiches(I)Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "SemWallpaperManagerService"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "removeSnapshotByWhich: whiches = "

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const/4 v2, 0x0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Ljava/lang/Integer;

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 55
    .line 56
    iget v6, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 57
    .line 58
    invoke-virtual {v5, v6, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByWhich(II)Ljava/util/ArrayList;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/4 v5, 0x1

    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    sget-boolean v3, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    .line 71
    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    if-nez v2, :cond_0

    .line 75
    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-lez v3, :cond_0

    .line 81
    .line 82
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    if-eqz v4, :cond_0

    .line 91
    .line 92
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    check-cast v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 97
    .line 98
    iget-boolean v4, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    .line 99
    .line 100
    if-eqz v4, :cond_1

    .line 101
    .line 102
    move v2, v5

    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 107
    .line 108
    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 109
    .line 110
    const/4 v4, 0x3

    .line 111
    const/4 v5, -0x1

    .line 112
    invoke-virtual {p1, v3, v4, v5, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 113
    .line 114
    .line 115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    .line 117
    .line 118
    if-eqz p1, :cond_5

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    iget-object p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 123
    .line 124
    iget v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->getAll()Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 149
    .line 150
    iget-object v1, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->source:Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "com.samsung.android.dynamiclock"

    .line 153
    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_3

    .line 159
    .line 160
    iget-boolean v1, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->isFromPairedService:Z

    .line 161
    .line 162
    if-eqz v1, :cond_3

    .line 163
    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    const-string v1, "getPairedDlsSnapshotKey: key = "

    .line 167
    .line 168
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget v5, v0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 172
    .line 173
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    const-string v0, "SnapshotManager"

    .line 181
    .line 182
    invoke-static {v0, p1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    if-lez v5, :cond_5

    .line 186
    .line 187
    const-string p1, "SemWallpaperManagerService"

    .line 188
    .line 189
    const-string/jumbo v0, "removeSnapshotByWhich: One of paired snapshot was removed. Restore last paired snapshot."

    .line 190
    .line 191
    .line 192
    invoke-static {p1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string p1, "android"

    .line 196
    .line 197
    invoke-virtual {p0, v5, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshot(ILjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 201
    .line 202
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    throw p0
.end method

.method public final requestWallpaperPrepare(Landroid/content/ComponentName;IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLiveWallpaperHelper:Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->mProviderRequester:Lcom/samsung/server/wallpaper/ProviderRequester;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/server/wallpaper/ProviderRequester;->isValidComponentName(Landroid/content/ComponentName;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    const-string v4, "ProviderRequester"

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    new-instance p0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string/jumbo p2, "requestWallpaperPrepare : service component is invalid - "

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {v4, p0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object p0, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string/jumbo v5, "requestWallpaperPrepare : "

    .line 42
    .line 43
    .line 44
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v5, ", which="

    .line 51
    .line 52
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v5, ", hasExtras="

    .line 59
    .line 60
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    if-eqz p4, :cond_1

    .line 64
    .line 65
    move v5, v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    move v5, v2

    .line 68
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v0, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string/jumbo v4, "which"

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    .line 88
    .line 89
    const-string/jumbo p2, "user_id"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const-string/jumbo v4, "wallpaper_service_class_name"

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p2, "external_params"

    .line 106
    .line 107
    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const-string/jumbo p2, "prepare_wallpaper"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/samsung/server/wallpaper/ProviderRequester;->invokeProviderCall(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :goto_1
    if-nez p0, :cond_2

    .line 122
    .line 123
    goto/16 :goto_6

    .line 124
    .line 125
    :cond_2
    new-instance p1, Landroid/os/Bundle;

    .line 126
    .line 127
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result p3

    .line 142
    if-eqz p3, :cond_8

    .line 143
    .line 144
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p3

    .line 148
    check-cast p3, Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {p0, p3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    if-nez p3, :cond_3

    .line 155
    .line 156
    move-object p3, v3

    .line 157
    goto :goto_5

    .line 158
    :cond_3
    const-string v0, "[\\W_]+"

    .line 159
    .line 160
    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    array-length v0, p3

    .line 165
    if-ne v0, v1, :cond_4

    .line 166
    .line 167
    aget-object p3, p3, v2

    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    move v4, v2

    .line 176
    :goto_3
    array-length v5, p3

    .line 177
    if-ge v4, v5, :cond_7

    .line 178
    .line 179
    aget-object v5, p3, v4

    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-eqz v6, :cond_5

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_5
    if-nez v4, :cond_6

    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_6
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 199
    .line 200
    .line 201
    move-result v6

    .line 202
    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    .line 203
    .line 204
    .line 205
    move-result v6

    .line 206
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    goto :goto_3

    .line 223
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p3

    .line 227
    :goto_5
    invoke-virtual {p1, p3, p4}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_8
    move-object v3, p1

    .line 232
    :goto_6
    return-object v3
.end method

.method public final restoreSnapshot(ILjava/lang/String;)V
    .locals 12

    .line 1
    const-string v0, "SemWallpaperManagerService"

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string/jumbo v2, "restoreSnapshot: key = "

    .line 6
    .line 7
    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v2, ", callingPackage = "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 34
    .line 35
    iget v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getPairedDlsSnapshotKey(II)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const-string v1, "SemWallpaperManagerService"

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string/jumbo v3, "restoreSnapshot: pairedDlsSnapshotKey = "

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const/4 v0, -0x1

    .line 63
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 68
    .line 69
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 70
    .line 71
    invoke-virtual {v4, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->size()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const-string v5, "SemWallpaperManagerService"

    .line 80
    .line 81
    if-gtz v3, :cond_1

    .line 82
    .line 83
    const-string p2, "canRestore: No snapshot."

    .line 84
    .line 85
    invoke-static {v5, p2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 89
    .line 90
    invoke-virtual {v4, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    .line 91
    .line 92
    .line 93
    goto/16 :goto_5

    .line 94
    .line 95
    :cond_1
    iget v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 96
    .line 97
    invoke-virtual {v4, v3, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_2
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 112
    .line 113
    monitor-enter v3

    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 115
    .line 116
    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getRepositroy(I)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    iget-object v5, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 123
    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    if-lez v5, :cond_3

    .line 131
    .line 132
    iget-object v4, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotRepository;->mSnapshots:Ljava/util/LinkedList;

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    check-cast v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_3
    const/4 v4, 0x0

    .line 142
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 143
    if-eqz v4, :cond_6

    .line 144
    .line 145
    iget v3, v4, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 146
    .line 147
    const/4 v4, 0x2

    .line 148
    if-ne p1, v3, :cond_5

    .line 149
    .line 150
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 151
    .line 152
    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 153
    .line 154
    new-instance v6, Ljava/util/HashMap;

    .line 155
    .line 156
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 157
    .line 158
    .line 159
    iget-object v7, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 160
    .line 161
    monitor-enter v7

    .line 162
    :try_start_1
    iget-object v8, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 163
    .line 164
    invoke-virtual {v8, v5, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 165
    .line 166
    .line 167
    move-result-object v8

    .line 168
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    if-eqz v8, :cond_4

    .line 170
    .line 171
    const-string v7, "SemWallpaperManagerService"

    .line 172
    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v10, "doRestore: which set = "

    .line 176
    .line 177
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 181
    .line 182
    .line 183
    move-result-object v10

    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-static {v7, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWhiches()Ljava/util/ArrayList;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-eqz v9, :cond_4

    .line 207
    .line 208
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v10

    .line 218
    invoke-virtual {p0, v10, v5}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p0, v5, v10, v8}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I

    .line 222
    .line 223
    .line 224
    move-result v11

    .line 225
    invoke-virtual {p0, v5, v10, v8, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->postProcess(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;I)V

    .line 226
    .line 227
    .line 228
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :cond_4
    invoke-virtual {v3, v5, v4, p1, v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :catchall_0
    move-exception p0

    .line 241
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    throw p0

    .line 243
    :cond_5
    const-string v3, "SemWallpaperManagerService"

    .line 244
    .line 245
    new-instance v5, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    const-string/jumbo v6, "restoreSnapshot: SnapshotData for key "

    .line 248
    .line 249
    .line 250
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v6, " is not the latest one."

    .line 257
    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    invoke-static {v3, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 269
    .line 270
    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 271
    .line 272
    invoke-virtual {p0, v5, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->doRestoreOrMigrate(II)Ljava/util/Map;

    .line 273
    .line 274
    .line 275
    move-result-object v6

    .line 276
    invoke-virtual {v3, v5, v4, p1, v6}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(IIILjava/util/Map;)V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_6
    const-string v3, "SemWallpaperManagerService"

    .line 281
    .line 282
    const-string/jumbo v4, "restoreSnapshot: No snapshot."

    .line 283
    .line 284
    .line 285
    invoke-static {v3, v4}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 289
    .line 290
    iget v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 291
    .line 292
    invoke-virtual {v3, v4, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    .line 293
    .line 294
    .line 295
    :goto_3
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 296
    .line 297
    monitor-enter v4

    .line 298
    :try_start_3
    iget-object v3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 299
    .line 300
    iget v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 301
    .line 302
    invoke-virtual {v3, v5, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->removeSnapshotByKey(II)Ljava/util/Map;

    .line 303
    .line 304
    .line 305
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 306
    iget p1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 307
    .line 308
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveSettingsLockedForSnapshot(I)V

    .line 309
    .line 310
    .line 311
    const-string p1, "SemWallpaperManagerService"

    .line 312
    .line 313
    new-instance v3, Ljava/lang/StringBuilder;

    .line 314
    .line 315
    const-string/jumbo v4, "restoreSnapshot: Elapsed Time = "

    .line 316
    .line 317
    .line 318
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 322
    .line 323
    .line 324
    move-result-wide v4

    .line 325
    sub-long/2addr v4, v1

    .line 326
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-static {p1, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    sget-boolean p1, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_PAIRED_DLS_SNAPSHOT:Z

    .line 337
    .line 338
    if-eqz p1, :cond_7

    .line 339
    .line 340
    if-lez v0, :cond_7

    .line 341
    .line 342
    invoke-virtual {p0, v0, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->restoreSnapshot(ILjava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :cond_7
    return-void

    .line 346
    :catchall_1
    move-exception p0

    .line 347
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 348
    throw p0

    .line 349
    :catchall_2
    move-exception p0

    .line 350
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 351
    throw p0

    .line 352
    :cond_8
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v0, "canRestore: No snapshot for key ["

    .line 355
    .line 356
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v0, "]."

    .line 363
    .line 364
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object p2

    .line 371
    invoke-static {v5, p2}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    iget p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCurrentUserId:I

    .line 375
    .line 376
    invoke-virtual {v4, p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->addHistory(II)V

    .line 377
    .line 378
    .line 379
    :goto_5
    return-void
.end method

.method public final restoreSnapshotInternal(IILcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 10
    .line 11
    invoke-virtual {v4, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    const/16 v7, 0x3eb

    .line 20
    .line 21
    const-string v8, "SemWallpaperManagerService"

    .line 22
    .line 23
    if-nez v6, :cond_0

    .line 24
    .line 25
    const-string/jumbo v0, "restoreSnapshotInternal: snapshot or WallpaperData in snapshot is null."

    .line 26
    .line 27
    .line 28
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v7

    .line 32
    :cond_0
    :try_start_0
    invoke-virtual {v3, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 33
    .line 34
    .line 35
    move-result-object v6

    .line 36
    invoke-virtual {v6}, Lcom/android/server/wallpaper/WallpaperData;->clone()Lcom/android/server/wallpaper/WallpaperData;

    .line 37
    .line 38
    .line 39
    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    const-string/jumbo v0, "restoreSnapshotInternal: wallpaperToRestore is null."

    .line 43
    .line 44
    .line 45
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v7

    .line 49
    :cond_1
    iget-object v7, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 50
    .line 51
    iget-object v9, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 52
    .line 53
    iget v10, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 54
    .line 55
    iget v11, v5, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 56
    .line 57
    const/16 v12, 0x3e9

    .line 58
    .line 59
    if-ne v11, v10, :cond_2

    .line 60
    .line 61
    iget v11, v7, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 62
    .line 63
    invoke-static {v11}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->containsSystem(I)Z

    .line 64
    .line 65
    .line 66
    move-result v11

    .line 67
    if-eqz v11, :cond_2

    .line 68
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v1, "restoreSnapshotInternal: Same image wallpaper does not need to be restored. (id = "

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget v1, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ")"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return v12

    .line 95
    :cond_2
    iget v11, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 96
    .line 97
    invoke-virtual {v6, v11}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 98
    .line 99
    .line 100
    move-result-object v13

    .line 101
    iget-object v14, v5, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 102
    .line 103
    iget v14, v14, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 104
    .line 105
    invoke-virtual {v5, v14}, Lcom/android/server/wallpaper/WallpaperData;->getWallpaperFile(I)Ljava/io/File;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    invoke-static {v14}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v5}, Lcom/android/server/wallpaper/WallpaperData;->getCropFile()Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v5}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->deleteFile(Ljava/io/File;)V

    .line 117
    .line 118
    .line 119
    iget-object v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 120
    .line 121
    iget v14, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 122
    .line 123
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 124
    .line 125
    const/4 v12, 0x4

    .line 126
    const/4 v15, 0x1

    .line 127
    if-eq v14, v15, :cond_c

    .line 128
    .line 129
    if-eq v14, v12, :cond_a

    .line 130
    .line 131
    const/16 v12, 0x8

    .line 132
    .line 133
    if-eq v14, v12, :cond_4

    .line 134
    .line 135
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 136
    .line 137
    .line 138
    move-result v12

    .line 139
    if-eqz v12, :cond_3

    .line 140
    .line 141
    new-instance v12, Ljava/io/File;

    .line 142
    .line 143
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 144
    .line 145
    .line 146
    move-result-object v15

    .line 147
    invoke-static/range {p2 .. p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-direct {v12, v15, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_4

    .line 155
    .line 156
    :cond_3
    new-instance v12, Ljava/io/File;

    .line 157
    .line 158
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-static/range {p2 .. p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getFileName(I)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_4

    .line 170
    .line 171
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 172
    .line 173
    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_7

    .line 176
    .line 177
    new-instance v12, Ljava/io/File;

    .line 178
    .line 179
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    goto :goto_0

    .line 190
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 191
    .line 192
    .line 193
    move-result-object v3

    .line 194
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 195
    .line 196
    .line 197
    move-result v15

    .line 198
    if-eqz v15, :cond_6

    .line 199
    .line 200
    const-string/jumbo v15, "wallpaper_first_sub"

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :cond_6
    const-string/jumbo v15, "wallpaper_first_sub_home"

    .line 205
    .line 206
    .line 207
    :goto_1
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_7
    new-instance v12, Ljava/io/File;

    .line 212
    .line 213
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 214
    .line 215
    .line 216
    move-result v3

    .line 217
    if-eqz v3, :cond_8

    .line 218
    .line 219
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    :goto_2
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 229
    .line 230
    .line 231
    move-result v15

    .line 232
    if-eqz v15, :cond_9

    .line 233
    .line 234
    const-string/jumbo v15, "wallpaper_first"

    .line 235
    .line 236
    .line 237
    goto :goto_3

    .line 238
    :cond_9
    const-string/jumbo v15, "wallpaper_first_home"

    .line 239
    .line 240
    .line 241
    :goto_3
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 246
    .line 247
    .line 248
    move-result v3

    .line 249
    if-eqz v3, :cond_b

    .line 250
    .line 251
    new-instance v12, Ljava/io/File;

    .line 252
    .line 253
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    const-string/jumbo v15, "wallpaper_animated_background_sub"

    .line 258
    .line 259
    .line 260
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_4

    .line 264
    :cond_b
    new-instance v12, Ljava/io/File;

    .line 265
    .line 266
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    const-string/jumbo v15, "wallpaper_animated_background"

    .line 271
    .line 272
    .line 273
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_4

    .line 277
    :cond_c
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-eqz v3, :cond_d

    .line 282
    .line 283
    new-instance v12, Ljava/io/File;

    .line 284
    .line 285
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 286
    .line 287
    .line 288
    move-result-object v3

    .line 289
    const-string/jumbo v15, "wallpaper_motion_background_sub"

    .line 290
    .line 291
    .line 292
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_4

    .line 296
    :cond_d
    new-instance v12, Ljava/io/File;

    .line 297
    .line 298
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    const-string/jumbo v15, "wallpaper_motion_background"

    .line 303
    .line 304
    .line 305
    invoke-direct {v12, v3, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :goto_4
    const-string v3, "getTargetFile: which = "

    .line 309
    .line 310
    const-string v15, ", WallpaperDataWhich = "

    .line 311
    .line 312
    move-object/from16 v16, v4

    .line 313
    .line 314
    const-string v4, ", wallpaperType = "

    .line 315
    .line 316
    invoke-static {v2, v5, v3, v15, v4}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    const-string v4, ", targetFile = "

    .line 324
    .line 325
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-static {v8, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v12}, Lcom/android/server/wallpaper/WallpaperData;->setWallpaperFile(Ljava/io/File;)V

    .line 339
    .line 340
    .line 341
    new-instance v3, Ljava/io/File;

    .line 342
    .line 343
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-eqz v5, :cond_e

    .line 348
    .line 349
    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperLockDir(I)Ljava/io/File;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    goto :goto_5

    .line 354
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    .line 355
    .line 356
    .line 357
    move-result-object v5

    .line 358
    :goto_5
    invoke-static/range {p2 .. p2}, Lcom/android/server/wallpaper/WallpaperUtils;->getCropFileName(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v14

    .line 362
    invoke-direct {v3, v5, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    iget-object v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mCropFiles:Landroid/util/SparseArray;

    .line 366
    .line 367
    iget v14, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 368
    .line 369
    invoke-virtual {v5, v14, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    .line 371
    .line 372
    iget-object v3, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 373
    .line 374
    const-string/jumbo v5, "restoreSnapshotInternal: which = "

    .line 375
    .line 376
    .line 377
    const-string v14, ", type = "

    .line 378
    .line 379
    const-string v15, ", backupFile = "

    .line 380
    .line 381
    invoke-static {v2, v11, v5, v14, v15}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    move-result-object v5

    .line 385
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    const-string v4, ", restoreWallpaperId = "

    .line 395
    .line 396
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const-string v14, ", lastCallingPackage = "

    .line 403
    .line 404
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v5

    .line 414
    invoke-static {v8, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    iget-object v5, v7, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 418
    .line 419
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;->clone()Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 420
    .line 421
    .line 422
    move-result-object v5

    .line 423
    iput-object v5, v9, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWallpaperHistory:Lcom/samsung/server/wallpaper/SemWallpaperData$WallpaperHistroy;

    .line 424
    .line 425
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 426
    .line 427
    .line 428
    move-result v5

    .line 429
    const-string v7, "[RESTORE]"

    .line 430
    .line 431
    if-nez v5, :cond_10

    .line 432
    .line 433
    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 434
    .line 435
    .line 436
    move-result v5

    .line 437
    if-nez v5, :cond_f

    .line 438
    .line 439
    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v6, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    goto :goto_6

    .line 447
    :cond_f
    invoke-virtual {v6, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto :goto_6

    .line 451
    :cond_10
    invoke-virtual {v6, v7}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    .line 456
    const-string/jumbo v5, "restoreSnapshotInternal: wallpaperToRestore ["

    .line 457
    .line 458
    .line 459
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    const-string v5, "]"

    .line 466
    .line 467
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v3

    .line 474
    invoke-static {v8, v3}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    const/4 v3, 0x0

    .line 478
    const/4 v5, -0x2

    .line 479
    iget-object v7, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotCallback:Lcom/samsung/server/wallpaper/snapshot/SnapshotCallback;

    .line 480
    .line 481
    if-eqz v11, :cond_25

    .line 482
    .line 483
    const/4 v9, 0x1

    .line 484
    if-eq v11, v9, :cond_22

    .line 485
    .line 486
    const/4 v4, 0x3

    .line 487
    if-eq v11, v4, :cond_23

    .line 488
    .line 489
    const/4 v4, 0x4

    .line 490
    if-eq v11, v4, :cond_22

    .line 491
    .line 492
    const/4 v4, 0x5

    .line 493
    if-eq v11, v4, :cond_21

    .line 494
    .line 495
    const/4 v4, 0x7

    .line 496
    if-eq v11, v4, :cond_19

    .line 497
    .line 498
    const/16 v4, 0x8

    .line 499
    .line 500
    if-eq v11, v4, :cond_16

    .line 501
    .line 502
    const/16 v0, 0x3e8

    .line 503
    .line 504
    if-eq v11, v0, :cond_15

    .line 505
    .line 506
    if-eqz v13, :cond_12

    .line 507
    .line 508
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-eqz v0, :cond_12

    .line 513
    .line 514
    const/4 v0, 0x1

    .line 515
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 516
    .line 517
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 518
    .line 519
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 520
    .line 521
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 522
    .line 523
    .line 524
    invoke-static {v13, v12}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 525
    .line 526
    .line 527
    move-result v0

    .line 528
    if-eqz v0, :cond_11

    .line 529
    .line 530
    const/16 v12, 0x3e9

    .line 531
    .line 532
    goto :goto_7

    .line 533
    :cond_11
    move v12, v5

    .line 534
    :goto_7
    return v12

    .line 535
    :cond_12
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    if-eqz v0, :cond_14

    .line 540
    .line 541
    const-string/jumbo v0, "restoreSnapshotInternal: Live wallpaper."

    .line 542
    .line 543
    .line 544
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 548
    .line 549
    .line 550
    move-result v0

    .line 551
    const/4 v3, 0x1

    .line 552
    or-int/2addr v0, v3

    .line 553
    move-object/from16 v9, v16

    .line 554
    .line 555
    invoke-virtual {v9, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 560
    .line 561
    or-int/lit8 v4, v4, 0x2

    .line 562
    .line 563
    iput v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 564
    .line 565
    iput-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 566
    .line 567
    if-gez v10, :cond_13

    .line 568
    .line 569
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    .line 570
    .line 571
    .line 572
    goto :goto_8

    .line 573
    :cond_13
    invoke-virtual {v9, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 574
    .line 575
    .line 576
    :goto_8
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 577
    .line 578
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 579
    .line 580
    .line 581
    const/16 v0, 0x3e9

    .line 582
    .line 583
    return v0

    .line 584
    :cond_14
    const-string/jumbo v0, "restoreSnapshotInternal: Unhandled snapshot!"

    .line 585
    .line 586
    .line 587
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    const/16 v0, 0x3ea

    .line 591
    .line 592
    return v0

    .line 593
    :cond_15
    move-object/from16 v9, v16

    .line 594
    .line 595
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 596
    .line 597
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 598
    .line 599
    .line 600
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 601
    .line 602
    .line 603
    :goto_9
    const/16 v0, 0x3e9

    .line 604
    .line 605
    goto/16 :goto_e

    .line 606
    .line 607
    :cond_16
    move-object/from16 v9, v16

    .line 608
    .line 609
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 610
    .line 611
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 612
    .line 613
    .line 614
    const/4 v0, 0x1

    .line 615
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 616
    .line 617
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 618
    .line 619
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 620
    .line 621
    .line 622
    if-eqz v13, :cond_18

    .line 623
    .line 624
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 625
    .line 626
    .line 627
    move-result v0

    .line 628
    if-eqz v0, :cond_18

    .line 629
    .line 630
    invoke-static {v13, v12}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 631
    .line 632
    .line 633
    move-result v0

    .line 634
    if-eqz v0, :cond_17

    .line 635
    .line 636
    const/16 v12, 0x3e9

    .line 637
    .line 638
    goto :goto_a

    .line 639
    :cond_17
    move v12, v5

    .line 640
    :goto_a
    return v12

    .line 641
    :cond_18
    const-string/jumbo v0, "restoreSnapshotInternal: backupFile not exist."

    .line 642
    .line 643
    .line 644
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    const/16 v0, 0x3e9

    .line 648
    .line 649
    return v0

    .line 650
    :cond_19
    move-object/from16 v9, v16

    .line 651
    .line 652
    sget-boolean v4, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_LAYERED_WALLPAPER_SNAPSHOT:Z

    .line 653
    .line 654
    move-object/from16 v11, p3

    .line 655
    .line 656
    if-eqz v4, :cond_1b

    .line 657
    .line 658
    iget v4, v11, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->key:I

    .line 659
    .line 660
    invoke-static {v1, v4, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    .line 661
    .line 662
    .line 663
    move-result-object v5

    .line 664
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 665
    .line 666
    .line 667
    move-result v5

    .line 668
    if-eqz v5, :cond_1a

    .line 669
    .line 670
    const-string/jumbo v5, "restoreSnapshotInternal: Asset files exist."

    .line 671
    .line 672
    .line 673
    invoke-static {v8, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    invoke-static {v1, v4, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getBackupWallpaperAssetsDir(III)Ljava/io/File;

    .line 677
    .line 678
    .line 679
    move-result-object v4

    .line 680
    invoke-static {v2, v1, v3}, Lcom/samsung/server/wallpaper/AssetFileManager;->getBaseAssetDir(IIZ)Ljava/io/File;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    invoke-static {v4, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->renameDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 685
    .line 686
    .line 687
    :cond_1a
    invoke-static {v6}, Lcom/samsung/server/wallpaper/PreloadedLiveWallpaperHelper;->recoverComponentNameIfMissed(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 688
    .line 689
    .line 690
    :cond_1b
    iget v3, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 691
    .line 692
    if-nez v3, :cond_1c

    .line 693
    .line 694
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 695
    .line 696
    :cond_1c
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 697
    .line 698
    .line 699
    move-result v3

    .line 700
    if-eqz v3, :cond_20

    .line 701
    .line 702
    iget v3, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 703
    .line 704
    invoke-static {v3}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 705
    .line 706
    .line 707
    move-result v3

    .line 708
    if-eqz v3, :cond_20

    .line 709
    .line 710
    invoke-virtual {v11, v2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getConnectedSnapshotForLiveWallpaper(I)I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    const/4 v4, -0x1

    .line 715
    if-ne v3, v4, :cond_1d

    .line 716
    .line 717
    const/4 v5, 0x1

    .line 718
    iput-boolean v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 719
    .line 720
    goto :goto_c

    .line 721
    :cond_1d
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 722
    .line 723
    invoke-virtual {v0, v1, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->getSnapshot(II)Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    invoke-static/range {p2 .. p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 728
    .line 729
    .line 730
    move-result v3

    .line 731
    if-eqz v0, :cond_1e

    .line 732
    .line 733
    invoke-virtual {v0, v3}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    if-nez v5, :cond_1f

    .line 738
    .line 739
    :cond_1e
    const/4 v8, 0x1

    .line 740
    goto :goto_b

    .line 741
    :cond_1f
    iget v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 742
    .line 743
    invoke-static {v5}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 744
    .line 745
    .line 746
    move-result v5

    .line 747
    const/4 v8, 0x1

    .line 748
    or-int/2addr v5, v8

    .line 749
    iput v5, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 750
    .line 751
    invoke-virtual {v0, v3, v4}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->setConnectedSnapshotForLiveWallpaper(II)V

    .line 752
    .line 753
    .line 754
    goto :goto_c

    .line 755
    :goto_b
    iput-boolean v8, v6, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 756
    .line 757
    :cond_20
    :goto_c
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 758
    .line 759
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 760
    .line 761
    .line 762
    iget v0, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 763
    .line 764
    invoke-virtual {v9, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 765
    .line 766
    .line 767
    goto/16 :goto_9

    .line 768
    .line 769
    :cond_21
    move-object/from16 v9, v16

    .line 770
    .line 771
    const/4 v0, 0x1

    .line 772
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 773
    .line 774
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 775
    .line 776
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 777
    .line 778
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 779
    .line 780
    .line 781
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 782
    .line 783
    .line 784
    goto/16 :goto_9

    .line 785
    .line 786
    :cond_22
    move-object/from16 v9, v16

    .line 787
    .line 788
    const/4 v0, 0x1

    .line 789
    goto :goto_d

    .line 790
    :cond_23
    move-object/from16 v9, v16

    .line 791
    .line 792
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 793
    .line 794
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 795
    .line 796
    .line 797
    const/4 v0, 0x1

    .line 798
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 799
    .line 800
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 801
    .line 802
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_DLS_SNAPSHOT:Z

    .line 803
    .line 804
    if-eqz v0, :cond_24

    .line 805
    .line 806
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    .line 807
    .line 808
    .line 809
    move-result v0

    .line 810
    iput v0, v6, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 811
    .line 812
    :cond_24
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 813
    .line 814
    .line 815
    goto/16 :goto_9

    .line 816
    .line 817
    :goto_d
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 818
    .line 819
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 820
    .line 821
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 822
    .line 823
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 824
    .line 825
    .line 826
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 827
    .line 828
    .line 829
    goto/16 :goto_9

    .line 830
    .line 831
    :goto_e
    return v0

    .line 832
    :cond_25
    move-object/from16 v11, p3

    .line 833
    .line 834
    move-object/from16 v9, v16

    .line 835
    .line 836
    if-eqz v13, :cond_27

    .line 837
    .line 838
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    .line 839
    .line 840
    .line 841
    move-result v0

    .line 842
    if-eqz v0, :cond_27

    .line 843
    .line 844
    if-ltz v10, :cond_27

    .line 845
    .line 846
    const/4 v0, 0x1

    .line 847
    iput-boolean v0, v6, Lcom/android/server/wallpaper/WallpaperData;->imageWallpaperPending:Z

    .line 848
    .line 849
    iput v2, v6, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 850
    .line 851
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 852
    .line 853
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 854
    .line 855
    .line 856
    invoke-static {v13, v12}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->saveFile(Ljava/io/File;Ljava/io/File;)Z

    .line 857
    .line 858
    .line 859
    move-result v0

    .line 860
    if-eqz v0, :cond_26

    .line 861
    .line 862
    const/16 v12, 0x3e9

    .line 863
    .line 864
    goto :goto_f

    .line 865
    :cond_26
    move v12, v5

    .line 866
    :goto_f
    return v12

    .line 867
    :cond_27
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 868
    .line 869
    .line 870
    move-result v0

    .line 871
    if-eqz v0, :cond_29

    .line 872
    .line 873
    invoke-static/range {p2 .. p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 874
    .line 875
    .line 876
    move-result v0

    .line 877
    invoke-virtual {v11, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->hasWallpaperData(I)Z

    .line 878
    .line 879
    .line 880
    move-result v0

    .line 881
    if-eqz v0, :cond_28

    .line 882
    .line 883
    invoke-static/range {p2 .. p2}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCorrespondingWhich(I)I

    .line 884
    .line 885
    .line 886
    move-result v0

    .line 887
    invoke-virtual {v11, v0}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotData;->getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperData;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    iget v0, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 892
    .line 893
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 894
    .line 895
    .line 896
    move-result v0

    .line 897
    if-eqz v0, :cond_28

    .line 898
    .line 899
    const/4 v3, 0x1

    .line 900
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 901
    .line 902
    const-string/jumbo v5, "restoreSnapshotInternal: isPartOfSystemAndLock = "

    .line 903
    .line 904
    .line 905
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 915
    .line 916
    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 918
    .line 919
    .line 920
    move-result-object v0

    .line 921
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    if-nez v3, :cond_2a

    .line 925
    .line 926
    if-gez v10, :cond_29

    .line 927
    .line 928
    goto :goto_10

    .line 929
    :cond_29
    const/16 v0, 0x3e9

    .line 930
    .line 931
    goto :goto_11

    .line 932
    :cond_2a
    :goto_10
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 933
    .line 934
    .line 935
    move-result v0

    .line 936
    const/4 v3, 0x1

    .line 937
    or-int/2addr v0, v3

    .line 938
    invoke-virtual {v9, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    iget v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 943
    .line 944
    or-int/lit8 v4, v4, 0x2

    .line 945
    .line 946
    iput v4, v0, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 947
    .line 948
    iput-boolean v3, v0, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 949
    .line 950
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    .line 951
    .line 952
    .line 953
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 954
    .line 955
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 956
    .line 957
    .line 958
    const/16 v0, 0x3e9

    .line 959
    .line 960
    return v0

    .line 961
    :goto_11
    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 962
    .line 963
    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->requestSaveRestoredWallpaperLocked(IILcom/android/server/wallpaper/WallpaperData;)V

    .line 964
    .line 965
    .line 966
    invoke-virtual {v9, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 967
    .line 968
    .line 969
    const-string/jumbo v1, "restoreSnapshotInternal: Preloaded ?"

    .line 970
    .line 971
    .line 972
    invoke-static {v8, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    return v0

    .line 976
    :catch_0
    move-exception v0

    .line 977
    new-instance v1, Ljava/lang/StringBuilder;

    .line 978
    .line 979
    const-string/jumbo v2, "restoreSnapshotInternal: "

    .line 980
    .line 981
    .line 982
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    .line 984
    .line 985
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 986
    .line 987
    .line 988
    move-result-object v0

    .line 989
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    .line 991
    .line 992
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    invoke-static {v8, v0}, Lcom/samsung/server/wallpaper/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    .line 998
    .line 999
    return v7
.end method

.method public final saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string/jumbo v2, "saveDefaultLiveWallpaperData: componentName = "

    .line 12
    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "SemWallpaperManagerService"

    .line 25
    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->putDefaultLiveWallpaperProperties(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public final saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 2
    .line 3
    iget v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultMultipackStyle(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    const-string v1, "MULTIPLE"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const-string v1, "="

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v4

    .line 36
    const-string v5, ":"

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result v6

    .line 42
    const/4 v7, -0x1

    .line 43
    if-eqz v6, :cond_1

    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v5, v7

    .line 51
    :goto_0
    if-ne v5, v7, :cond_2

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    move v1, v3

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    const-string/jumbo v5, "tilt"

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    move-object v8, v1

    .line 71
    move v1, v0

    .line 72
    move-object v0, v8

    .line 73
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string/jumbo v6, "multipack://"

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    const-string v0, "?tilt=true"

    .line 87
    .line 88
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    goto :goto_3

    .line 96
    :cond_4
    :goto_2
    const-string v0, "SemWallpaperManagerService"

    .line 97
    .line 98
    const-string v1, "getDefaultMultiPackUri: defaultWallpaperStyle is empty or not MULTIPLE!"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    move-object v0, v2

    .line 104
    :goto_3
    iput-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 105
    .line 106
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 107
    .line 108
    iput-object v0, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 109
    .line 110
    iput-object v2, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 111
    .line 112
    iput-boolean v4, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 113
    .line 114
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    .line 120
    .line 121
    .line 122
    move-result p0

    .line 123
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 124
    .line 125
    return-void
.end method

.method public final saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Landroid/app/WallpaperManager;->getOMCVideoWallpaperFilePath(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 7
    .line 8
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 9
    .line 10
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoWallpaperFileName(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    const/4 v3, 0x0

    .line 17
    iput-boolean v3, p1, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 18
    .line 19
    new-instance v4, Landroid/graphics/Rect;

    .line 20
    .line 21
    invoke-direct {v4, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->cropHint:Landroid/graphics/Rect;

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    iput-boolean v4, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoDefaultHasBeenUsed:Z

    .line 33
    .line 34
    iput-object v1, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "com.samsung.android.wallpaper.res"

    .line 37
    .line 38
    iput-object v1, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v2, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 41
    .line 42
    iput-boolean v4, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 43
    .line 44
    iput-object v0, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 45
    .line 46
    iput-object v0, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/android/server/wallpaper/WallpaperUtils;->makeWallpaperIdLocked()I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperData;->wallpaperId:I

    .line 58
    .line 59
    return-void
.end method

.method public final saveSettingsLockedForSnapshot(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotDataLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSnapshotManager:Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;->saveSettingsLockedForSnapshot(I)V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final semClearWallpaperLocked(IILjava/lang/String;)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 9
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->removeSnapshotByWhich(I)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(clear)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v4

    .line 12
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v5

    .line 13
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v6

    .line 14
    iget-object v7, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 15
    invoke-virtual {v8}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    move-result-object v8

    .line 16
    invoke-static {v7, v1, v8}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v7

    const/4 v8, -0x1

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    .line 17
    const-string v4, "SemWallpaperManagerService"

    const-string/jumbo v5, "semClearWallpaperLocked: Default operator wallpaper"

    invoke-static {v4, v5}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v4, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v4, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    .line 19
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 20
    iput v8, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 21
    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 22
    iget-object v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 23
    iput v1, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 24
    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 25
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 26
    iput-boolean v9, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 27
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file://"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v3, "SemWallpaperManagerService"

    const-string/jumbo v4, "setFactoryDefaultWallpaper: uriString = "

    .line 31
    invoke-static {v4, v1, v3}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 33
    iput-object v1, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 34
    :cond_0
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    return-void

    .line 35
    :cond_1
    iget-object v7, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    or-int/lit8 v10, v4, 0x1

    invoke-virtual {v7, v2, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v7

    .line 36
    iget-object v11, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    or-int/lit8 v4, v4, 0x2

    invoke-virtual {v11, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v4

    .line 37
    new-instance v11, Lcom/android/server/wallpaper/WallpaperData;

    invoke-direct {v11, v2, v1}, Lcom/android/server/wallpaper/WallpaperData;-><init>(II)V

    .line 38
    iput v1, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 39
    iget-object v12, v11, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 40
    iput v1, v12, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 41
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    move-result v12

    .line 42
    iget-object v13, v11, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 43
    iput v12, v13, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 44
    invoke-virtual {v11, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 45
    const-string v13, "SemWallpaperManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "semClearWallpaperLocked: factoryDefaultType = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x3

    if-eq v12, v13, :cond_b

    const/4 v13, 0x7

    if-eq v12, v13, :cond_a

    const/16 v5, 0x8

    const/4 v14, 0x0

    if-eq v12, v5, :cond_5

    if-eqz v6, :cond_2

    .line 46
    iget-object v5, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    if-eqz v5, :cond_2

    .line 47
    iget-object v11, v7, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_2

    .line 48
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    if-ne v5, v13, :cond_2

    .line 49
    invoke-virtual {v0, v10}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 50
    invoke-virtual {v11, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 51
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 52
    iput v8, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 53
    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 54
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 55
    iput v12, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 56
    invoke-virtual {v4, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 57
    iget v3, v7, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    or-int/lit8 v3, v3, 0x2

    .line 58
    iput v3, v7, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 59
    iput-boolean v9, v7, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 60
    iget-object v5, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onBindWallpaperRequested(II)V

    .line 61
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperFlagUpdated(II)V

    .line 62
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 63
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 64
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 65
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 66
    invoke-virtual {v3, v2, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 67
    iget-object v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 68
    iget-object v2, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 69
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 70
    invoke-virtual {v1, v2, v14}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 71
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 72
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 73
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 74
    invoke-virtual {v0, v1, v9}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    return-void

    :cond_2
    if-eqz v6, :cond_3

    move-object v7, v4

    .line 75
    :cond_3
    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 76
    iput v8, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 77
    invoke-virtual {v7}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 78
    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 79
    iput v12, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 80
    invoke-virtual {v7, v3}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 81
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 82
    iput-boolean v9, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 83
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    invoke-virtual {v3, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperUri(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 85
    iput-object v3, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 86
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v3, v7}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    if-eqz v6, :cond_4

    .line 87
    iget-object v3, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 88
    iget-object v4, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 89
    iget-object v4, v4, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 90
    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 91
    :cond_4
    iget-object v1, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 92
    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 93
    iget v2, v2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 94
    invoke-virtual {v1, v2, v14}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    .line 95
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 96
    iget-object v1, v7, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 97
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 98
    invoke-virtual {v0, v1, v9}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto/16 :goto_4

    .line 99
    :cond_5
    invoke-virtual {v0, v11}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 100
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    iget v1, v11, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 102
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v2

    .line 103
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    move-result v3

    .line 104
    iget v4, v11, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 105
    iget-object v5, v11, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 106
    iget-boolean v6, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 107
    iget-boolean v7, v11, Lcom/android/server/wallpaper/WallpaperData;->allowBackup:Z

    .line 108
    iget-object v8, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mExternalParams:Landroid/os/Bundle;

    .line 109
    iget-object v10, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFilePath:Ljava/lang/String;

    .line 110
    iget-object v12, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoPkgName:Ljava/lang/String;

    .line 111
    iget-object v13, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mVideoFileName:Ljava/lang/String;

    .line 112
    iget-object v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLastCallingPackage:Ljava/lang/String;

    .line 113
    const-string v15, "WallpaperManagerService"

    const-string/jumbo v14, "onSetVideoWallpaper: userId = "

    const-string v9, ", which = "

    move-object/from16 v25, v11

    const-string v11, ", isPreloaded = "

    .line 114
    invoke-static {v4, v1, v14, v9, v11}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 115
    const-string v11, ", allowBackup = "

    const-string v14, ", extras = "

    .line 116
    invoke-static {v9, v6, v11, v7, v14}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 117
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", videoFilePath = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", videoPackage = "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", videoFileName = "

    const-string v14, ", callingPackage = "

    .line 118
    invoke-static {v9, v12, v11, v13, v14}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v15, v9}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v9, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v9, v9, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 121
    :try_start_0
    iget-object v15, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move/from16 v16, v1

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object/from16 v20, v5

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v8

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/wallpaper/WallpaperManagerService;->setVideoWallpaperLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLandroid/os/Bundle;)V

    if-eqz v3, :cond_6

    .line 122
    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v6, 0x1

    or-int/2addr v2, v6

    invoke-virtual {v5, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperData;

    move-result-object v2

    .line 123
    iget v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v2, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 124
    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateEngineFlags(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 125
    :cond_6
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isWatchFaceDisplay(I)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move-object/from16 v4, v25

    goto :goto_2

    .line 127
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v4, v25

    .line 128
    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 129
    iget v5, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 130
    invoke-virtual {v2, v5, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCoverWallpaperChanged(II)V

    :goto_2
    if-eqz v3, :cond_9

    .line 131
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 132
    iget-object v3, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 133
    iget v3, v3, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    const/4 v5, 0x0

    .line 134
    invoke-virtual {v2, v3, v1, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged(IILandroid/os/Bundle;)V

    .line 135
    :cond_9
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mSemService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mLegibilityColor:Lcom/samsung/server/wallpaper/LegibilityColor;

    .line 136
    iget-object v1, v4, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 137
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    const/4 v2, 0x0

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->extractColor(IZ)V

    goto :goto_4

    .line 139
    :goto_3
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    move-object v4, v11

    if-eqz v5, :cond_c

    .line 140
    invoke-virtual {v0, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 141
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onSetWallpaperComponent(Lcom/android/server/wallpaper/WallpaperData;)V

    goto :goto_4

    :cond_b
    move-object v4, v11

    .line 142
    invoke-virtual {v0, v4}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 143
    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_c
    :goto_4
    return-void
.end method

.method public final semClearWallpaperLocked(Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "semClearWallpaperLocked: wallpaper = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget v0, p1, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 3
    iget p1, p1, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 4
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    move-result v1

    const-string v2, "android"

    if-eqz v1, :cond_0

    .line 5
    invoke-static {v0}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    move-result v0

    or-int/lit8 v1, v0, 0x1

    .line 6
    invoke-virtual {p0, v1, p1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    or-int/lit8 v0, v0, 0x2

    .line 7
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->semClearWallpaperLocked(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final setFactoryDefaultWallpaper(IILcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "setFactoryDefaultWallpaper: userId = "

    .line 2
    .line 3
    .line 4
    const-string v1, ", which = "

    .line 5
    .line 6
    const-string v2, ", systemWallpaper = "

    .line 7
    .line 8
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ", lockWallpaper = "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "SemWallpaperManagerService"

    .line 28
    .line 29
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string/jumbo v0, "setFactoryDefaultWallpaper: which should contain mode."

    .line 39
    .line 40
    .line 41
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    sget-boolean v2, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 45
    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-static {p2}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iget-object v4, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v5, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCMFWallpaper:Lcom/samsung/server/wallpaper/CMFWallpaper;

    .line 70
    .line 71
    invoke-virtual {v5}, Lcom/samsung/server/wallpaper/CMFWallpaper;->getDeviceColor()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-static {v4, p2, v5}, Landroid/app/WallpaperManager;->isDefaultOperatorWallpaper(Landroid/content/Context;ILjava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-virtual {p0, p2, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->deleteThumbnailFile(II)V

    .line 80
    .line 81
    .line 82
    if-eqz v3, :cond_2

    .line 83
    .line 84
    move-object p1, p4

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    move-object p1, p3

    .line 87
    :goto_1
    if-nez p1, :cond_3

    .line 88
    .line 89
    const-string/jumbo p0, "setFactoryDefaultWallpaper: No WallpaperData to initialize."

    .line 90
    .line 91
    .line 92
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_3
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 97
    .line 98
    const/4 v6, -0x1

    .line 99
    iput v6, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperData;->cleanUp()V

    .line 102
    .line 103
    .line 104
    const-string v5, "android"

    .line 105
    .line 106
    invoke-virtual {p1, v5}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 110
    .line 111
    iput p2, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 112
    .line 113
    if-eqz p3, :cond_4

    .line 114
    .line 115
    iget v6, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 116
    .line 117
    invoke-static {v6}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    iput-boolean v6, p1, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 122
    .line 123
    :cond_4
    iget-object v6, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 124
    .line 125
    const/4 v7, 0x1

    .line 126
    iput-boolean v7, v6, Lcom/samsung/server/wallpaper/SemWallpaperData;->mIsPreloaded:Z

    .line 127
    .line 128
    if-eqz v4, :cond_6

    .line 129
    .line 130
    const-string/jumbo p3, "setFactoryDefaultWallpaper: Default operator wallpaper."

    .line 131
    .line 132
    .line 133
    invoke-static {v1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {p0, p2}, Landroid/app/WallpaperManager;->getDefaultWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object p0

    .line 142
    if-eqz p0, :cond_5

    .line 143
    .line 144
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    if-eqz p2, :cond_5

    .line 149
    .line 150
    new-instance p2, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    const-string p3, "file://"

    .line 153
    .line 154
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    const-string/jumbo p2, "setFactoryDefaultWallpaper: uriString = "

    .line 169
    .line 170
    .line 171
    invoke-static {p2, p0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iget-object p2, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 175
    .line 176
    iput-object p0, p2, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 177
    .line 178
    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/server/wallpaper/WallpaperData;->setCallingPackage(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :cond_6
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultWallpaperType(I)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    const-string/jumbo v5, "setFactoryDefaultWallpaper: factoryDefaultType = "

    .line 187
    .line 188
    .line 189
    invoke-static {v4, v5, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    iget-object v5, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 193
    .line 194
    iput v4, v5, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 195
    .line 196
    const/4 v5, 0x3

    .line 197
    if-eq v4, v5, :cond_c

    .line 198
    .line 199
    const/4 v5, 0x7

    .line 200
    if-eq v4, v5, :cond_9

    .line 201
    .line 202
    const/16 v1, 0x8

    .line 203
    .line 204
    if-eq v4, v1, :cond_8

    .line 205
    .line 206
    if-eqz v3, :cond_7

    .line 207
    .line 208
    if-eqz p3, :cond_7

    .line 209
    .line 210
    iget-object v1, p3, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 211
    .line 212
    if-eqz v1, :cond_7

    .line 213
    .line 214
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 215
    .line 216
    if-eqz v2, :cond_7

    .line 217
    .line 218
    iget v1, v1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWpType:I

    .line 219
    .line 220
    if-ne v1, v5, :cond_7

    .line 221
    .line 222
    or-int/2addr v0, v7

    .line 223
    invoke-virtual {p0, v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->getDefaultPreloadedLiveWallpaperComponentName(I)Landroid/content/ComponentName;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    iget-object v0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 234
    .line 235
    invoke-virtual {v0, p2, v5}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultWallpaperPaired(II)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_7

    .line 240
    .line 241
    iget p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 242
    .line 243
    or-int/lit8 p1, p1, 0x2

    .line 244
    .line 245
    iput p1, p3, Lcom/android/server/wallpaper/WallpaperData;->mWhich:I

    .line 246
    .line 247
    iput-boolean v7, p3, Lcom/android/server/wallpaper/WallpaperData;->mSystemWasBoth:Z

    .line 248
    .line 249
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 250
    .line 251
    invoke-virtual {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onDetachWallpaper(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 252
    .line 253
    .line 254
    return-void

    .line 255
    :cond_7
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mDefaultWallpaper:Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 256
    .line 257
    invoke-virtual {p0, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->getDefaultWallpaperUri(I)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object p0

    .line 261
    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 262
    .line 263
    iput-object p0, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mUri:Ljava/lang/String;

    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultVideoWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 267
    .line 268
    .line 269
    goto :goto_2

    .line 270
    :cond_9
    iget-object p3, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mResourceInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 271
    .line 272
    invoke-virtual {p3, p2, v5}, Landroid/app/SemWallpaperResourcesInfo;->isDefaultWallpaperPaired(II)Z

    .line 273
    .line 274
    .line 275
    move-result p2

    .line 276
    if-eqz p2, :cond_b

    .line 277
    .line 278
    if-eqz v2, :cond_a

    .line 279
    .line 280
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 281
    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_a
    const-string/jumbo p0, "setFactoryDefaultWallpaper: unexpected default wallpaper state"

    .line 285
    .line 286
    .line 287
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_b
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultLiveWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 292
    .line 293
    .line 294
    goto :goto_2

    .line 295
    :cond_c
    invoke-virtual {p0, p1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->saveDefaultMutipackWallpaperData(Lcom/android/server/wallpaper/WallpaperData;)V

    .line 296
    .line 297
    .line 298
    :goto_2
    return-void
.end method

.method public final setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystemAndLock(I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    or-int/lit8 v0, p1, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    or-int/2addr p1, v1

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->setLegibilityColorsToWallpaperData(IILandroid/os/Bundle;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isLock(I)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    const-string v0, "lockLegibilityColors"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const-string/jumbo v0, "systemLegibilityColors"

    .line 32
    .line 33
    .line 34
    :goto_0
    const/4 v2, 0x0

    .line 35
    if-nez p3, :cond_2

    .line 36
    .line 37
    move-object p3, v2

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    :goto_1
    const-string/jumbo v0, "setLegibilityColorsToWallpaperData: which="

    .line 44
    .line 45
    .line 46
    const-string v3, ", colorsBundle = "

    .line 47
    .line 48
    invoke-static {p1, v0, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez p3, :cond_3

    .line 53
    .line 54
    const-string/jumbo v3, "null"

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p3}, Landroid/os/Bundle;->size()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " items"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    const-string v3, "SemWallpaperManagerService"

    .line 87
    .line 88
    invoke-static {v3, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 92
    .line 93
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;->onWallpaperDataRequested(II)Lcom/android/server/wallpaper/WallpaperData;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperData;->mSemWallpaperData:Lcom/samsung/server/wallpaper/SemWallpaperData;

    .line 98
    .line 99
    if-nez p3, :cond_4

    .line 100
    .line 101
    iput-object v2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 102
    .line 103
    iput-object v2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_4
    const-string/jumbo p2, "rotation0"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    check-cast p2, Landroid/app/SemWallpaperColors;

    .line 114
    .line 115
    if-nez p2, :cond_5

    .line 116
    .line 117
    const-string/jumbo p0, "setSemWallpaperColors: color of rotation 0 is missing!"

    .line 118
    .line 119
    .line 120
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    iput-object v2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 124
    .line 125
    iput-object v2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    iput-object p2, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mPrimarySemColors:Landroid/app/SemWallpaperColors;

    .line 129
    .line 130
    iget p0, p0, Lcom/android/server/wallpaper/WallpaperData;->userId:I

    .line 131
    .line 132
    iget v0, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mWhich:I

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    invoke-static {p0, v0, v2}, Lcom/samsung/server/wallpaper/LegibilityColor;->getWallpaperColorPath(IIZ)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p2, p0}, Landroid/app/SemWallpaperColors;->save(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-array p0, v1, [Landroid/app/SemWallpaperColors;

    .line 143
    .line 144
    const-string/jumbo v0, "rotation90"

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, Landroid/app/SemWallpaperColors;

    .line 152
    .line 153
    aput-object v0, p0, v2

    .line 154
    .line 155
    const-string/jumbo v0, "rotation270"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 159
    .line 160
    .line 161
    move-result-object p3

    .line 162
    check-cast p3, Landroid/app/SemWallpaperColors;

    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    aput-object p3, p0, v0

    .line 166
    .line 167
    iput-object p0, p1, Lcom/samsung/server/wallpaper/SemWallpaperData;->mLandscapeColors:[Landroid/app/SemWallpaperColors;

    .line 168
    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    const-string/jumbo p3, "setSemWallpaperColors: rotation_0="

    .line 172
    .line 173
    .line 174
    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p2, ", rotation_90="

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    aget-object p2, p0, v2

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string p2, ", rotation_270="

    .line 191
    .line 192
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    aget-object p0, p0, v0

    .line 196
    .line 197
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    :goto_3
    return-void
.end method

.method public setSnapshotTestMode(Z)V
    .locals 0

    .line 1
    sget-boolean p0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->SHIPPED:Z

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sput-boolean p1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->sSnapshotTestMode:Z

    .line 7
    .line 8
    return-void
.end method
