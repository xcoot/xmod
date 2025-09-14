.class public final Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

.field public static mContext:Landroid/content/Context;

.field public static final sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

.field public static sGlobalColorThemeSeq:I


# instance fields
.field public mIsSuccessLoadMetadata:Z

.field public mIsThemeParkApplied:Z

.field public mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

.field public mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/om/OverlayIdentifier;

    .line 2
    .line 3
    const-string v1, "android"

    .line 4
    .line 5
    const-string v2, "SemWT_G_MonetPalette"

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    .line 14
    .line 15
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_2

    .line 17
    .line 18
    aget-object v3, v0, v2

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->deleteFile(Ljava/io/File;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 31
    .line 32
    .line 33
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/om/OverlayManagerSettingsHelper;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
    .locals 4

    .line 1
    const-class v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    new-instance v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    iput-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    .line 17
    .line 18
    iput-boolean v2, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z

    .line 19
    .line 20
    sget-object v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 30
    .line 31
    :cond_0
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->sInstance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 32
    .line 33
    iput-object p0, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 34
    .line 35
    new-instance v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeOverlayPolicy;-><init>(Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;)V

    .line 38
    .line 39
    .line 40
    sget-object p0, Lcom/android/server/om/OverlayPolicyManager;->mLock:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :try_start_1
    sget-object v3, Lcom/android/server/om/OverlayPolicyManager;->policies:Ljava/util/List;

    .line 44
    .line 45
    check-cast v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    :try_start_2
    sput-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 52
    .line 53
    iput-object p1, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception p0

    .line 57
    goto :goto_1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    :try_start_4
    throw p1

    .line 61
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->instance:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-object p0

    .line 65
    :goto_1
    monitor-exit v0

    .line 66
    throw p0
.end method

.method public static increaseColorThemeSeq()V
    .locals 2

    .line 1
    sget v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sGlobalColorThemeSeq:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "debug.wallpaper.theme.seq"

    .line 30
    .line 31
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    iget-object v4, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 10
    .line 11
    const-string v5, "FAILED at applyWallpaperColor, e="

    .line 12
    .line 13
    const-string v6, "[Disable] commit OverlayManagerTransaction, dur:"

    .line 14
    .line 15
    const-string v7, "[Enable] commit OverlayManagerTransaction, dur1:"

    .line 16
    .line 17
    const-string v8, "SWT:applyWallpaperColors, wallpaperColors:"

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 20
    .line 21
    .line 22
    move-result v9

    .line 23
    sget-object v10, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v10

    .line 29
    const/16 v11, 0x3e8

    .line 30
    .line 31
    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    .line 32
    .line 33
    .line 34
    move-result v10

    .line 35
    const-string v11, "SWT_WTM_Wrapper"

    .line 36
    .line 37
    if-eqz v10, :cond_0

    .line 38
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v1, "applyWallpaperColor called by abnormal uid : "

    .line 42
    .line 43
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v11, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v10, "invoked applyWallpaperColor, isGray="

    .line 60
    .line 61
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v10, ", colorSS="

    .line 68
    .line 69
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string v10, ", colorGG="

    .line 76
    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-static {v11, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    const/4 v9, 0x0

    .line 91
    const-wide/16 v12, 0x2000

    .line 92
    .line 93
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    invoke-static {v12, v13, v8}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    .line 109
    .line 110
    .line 111
    const/4 v8, 0x0

    .line 112
    if-nez p4, :cond_1

    .line 113
    .line 114
    iget-boolean v10, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z

    .line 115
    .line 116
    if-eqz v10, :cond_1

    .line 117
    .line 118
    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->setTemplateAsColorTheme()Z

    .line 119
    .line 120
    .line 121
    move-result v10

    .line 122
    if-eqz v10, :cond_1

    .line 123
    .line 124
    iput-boolean v8, v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsThemeParkApplied:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    goto/16 :goto_6

    .line 129
    .line 130
    :catch_0
    move-exception v0

    .line 131
    goto/16 :goto_4

    .line 132
    .line 133
    :cond_1
    :goto_0
    const-string v10, "/data/overlays/themepark/state_applied.txt"

    .line 134
    .line 135
    const-string/jumbo v14, "overlay"

    .line 136
    .line 137
    .line 138
    const-string v15, "FAILED at commit, e="

    .line 139
    .line 140
    if-eqz v1, :cond_2

    .line 141
    .line 142
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v16

    .line 146
    iget-object v6, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 147
    .line 148
    invoke-virtual {v6, v1, v2, v3}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 149
    .line 150
    .line 151
    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 152
    .line 153
    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->unregisterThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    .line 170
    .line 171
    :try_start_2
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->increaseColorThemeSeq()V

    .line 172
    .line 173
    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 175
    .line 176
    .line 177
    move-result-wide v2

    .line 178
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v0, v1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->applyDynamicColor()V

    .line 197
    .line 198
    .line 199
    const/4 v0, 0x1

    .line 200
    invoke-virtual {v4, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 201
    .line 202
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sub-long v6, v2, v16

    .line 209
    .line 210
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v1, ", dur2:"

    .line 214
    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 219
    .line 220
    .line 221
    move-result-wide v6

    .line 222
    sub-long/2addr v6, v2

    .line 223
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v11, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    .line 232
    .line 233
    goto :goto_1

    .line 234
    :catch_1
    move-exception v0

    .line 235
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-static {v11, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 251
    .line 252
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 253
    .line 254
    :goto_1
    if-nez p4, :cond_3

    .line 255
    .line 256
    new-instance v0, Ljava/io/File;

    .line 257
    .line 258
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-eqz v1, :cond_3

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :cond_2
    iget-object v7, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 272
    .line 273
    invoke-virtual {v7, v1, v2, v3}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 274
    .line 275
    .line 276
    new-instance v1, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 277
    .line 278
    invoke-direct {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v4, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->disableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0, v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->unregisterThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    .line 289
    .line 290
    :try_start_4
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->increaseColorThemeSeq()V

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v2

    .line 297
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-virtual {v1}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-interface {v0, v1}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeColor()V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v8}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveWallpaperThemeState(I)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    .line 319
    .line 320
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 324
    .line 325
    .line 326
    move-result-wide v6

    .line 327
    sub-long/2addr v6, v2

    .line 328
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    invoke-static {v11, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 336
    .line 337
    .line 338
    goto :goto_2

    .line 339
    :catch_2
    move-exception v0

    .line 340
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 341
    .line 342
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v11, v0}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 356
    .line 357
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;

    .line 358
    .line 359
    :goto_2
    new-instance v0, Ljava/io/File;

    .line 360
    .line 361
    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-eqz v1, :cond_3

    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 371
    .line 372
    .line 373
    :cond_3
    :goto_3
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    .line 375
    .line 376
    goto :goto_5

    .line 377
    :goto_4
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    .line 391
    .line 392
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentMonetOverlays:Ljava/util/ArrayList;

    .line 393
    .line 394
    iput-object v9, v4, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mCurrentThemeOverlays:Ljava/util/ArrayList;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 395
    .line 396
    goto :goto_3

    .line 397
    :goto_5
    return-void

    .line 398
    :goto_6
    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    .line 399
    .line 400
    .line 401
    throw v0
.end method

.method public final getColorThemeState()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    .line 2
    .line 3
    sget-object v0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->sColorThemeOverlayId:Landroid/content/om/OverlayIdentifier;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 15
    .line 16
    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const/4 p0, -0x1

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_2

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_2
    return v1
.end method

.method public final initTemplateMetadataIfNeeded()V
    .locals 9

    .line 1
    const-string v0, "SWT_ThemeManager"

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    .line 4
    .line 5
    if-nez v1, :cond_3

    .line 6
    .line 7
    iget-object v1, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v2, "failed loading template and metadata, wallpaper theming will not working, ex:"

    .line 13
    .line 14
    const-string v3, "loading metadata, error = "

    .line 15
    .line 16
    const-string v4, "loading template, error = "

    .line 17
    .line 18
    const-wide/16 v5, 0x2000

    .line 19
    .line 20
    :try_start_0
    const-string v7, "SWT:initTemplateMetadataStatic"

    .line 21
    .line 22
    invoke-static {v5, v6, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :try_start_1
    iget-object v7, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 26
    .line 27
    iget-object v8, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v7, v8}, Landroid/content/om/wallpapertheme/TemplateManager;->loadStaticTemplate(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto/16 :goto_c

    .line 35
    .line 36
    :catch_0
    move-exception v7

    .line 37
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v0, v4}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    .line 51
    .line 52
    :goto_0
    :try_start_3
    iget-object v4, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mMetaDataManager:Landroid/content/om/wallpapertheme/MetaDataManager;

    .line 53
    .line 54
    iget-object v7, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mContext:Landroid/content/Context;

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Landroid/content/om/wallpapertheme/MetaDataManager;->loadStaticMetadata(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :catch_1
    move-exception v4

    .line 61
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_2
    move-exception v3

    .line 81
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v0, v2}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_2
    const/4 v2, 0x0

    .line 98
    :try_start_6
    const-string v3, "SWT:initTemplateMetadataFromPkg"

    .line 99
    .line 100
    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 104
    .line 105
    const-wide/16 v7, 0x2280

    .line 106
    .line 107
    invoke-interface {v3, v7, v8, v2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    if-nez v3, :cond_0

    .line 112
    .line 113
    const-string v3, "Couldn\'t get package list properly, stop initTemplateMetadataFromPkg"

    .line 114
    .line 115
    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 116
    .line 117
    .line 118
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 119
    .line 120
    .line 121
    move v0, v2

    .line 122
    goto :goto_7

    .line 123
    :catchall_1
    move-exception p0

    .line 124
    goto/16 :goto_b

    .line 125
    .line 126
    :catch_3
    move-exception v3

    .line 127
    goto :goto_5

    .line 128
    :catch_4
    move-exception v3

    .line 129
    goto :goto_6

    .line 130
    :cond_0
    :try_start_7
    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-eqz v4, :cond_1

    .line 143
    .line 144
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v4

    .line 148
    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 149
    .line 150
    invoke-virtual {v1, v4}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateMetadataFromPkg(Landroid/content/pm/PackageInfo;)V
    :try_end_7
    .catch Landroid/os/BadParcelableException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 151
    .line 152
    .line 153
    goto :goto_4

    .line 154
    :cond_1
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 155
    .line 156
    .line 157
    const/4 v0, 0x1

    .line 158
    goto :goto_7

    .line 159
    :goto_5
    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 160
    .line 161
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    .line 163
    .line 164
    const-string v7, "initTemplateMetadataFromPkg, ex = "

    .line 165
    .line 166
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v7, "Couldn\'t get package list properly, stop initTemplateMetadataFromPkg. ex = "

    .line 186
    .line 187
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-static {v0, v3}, Landroid/content/om/wallpapertheme/ThemeUtil;->saveSWTLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 198
    .line 199
    .line 200
    goto :goto_3

    .line 201
    :goto_7
    iput-boolean v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mIsSuccessLoadMetadata:Z

    .line 202
    .line 203
    const-string p0, "SWT_WTM_Wrapper"

    .line 204
    .line 205
    new-instance v0, Ljava/io/File;

    .line 206
    .line 207
    const-string v3, "/data/overlays/themepark/state_applied.txt"

    .line 208
    .line 209
    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    if-eqz v3, :cond_3

    .line 217
    .line 218
    :try_start_9
    new-instance v3, Ljava/io/FileInputStream;

    .line 219
    .line 220
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 221
    .line 222
    .line 223
    :try_start_a
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 224
    .line 225
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 226
    .line 227
    .line 228
    const/16 v4, 0x400

    .line 229
    .line 230
    new-array v4, v4, [B

    .line 231
    .line 232
    :goto_8
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    .line 233
    .line 234
    .line 235
    move-result v5

    .line 236
    const/4 v6, -0x1

    .line 237
    if-eq v5, v6, :cond_2

    .line 238
    .line 239
    invoke-virtual {v0, v4, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 240
    .line 241
    .line 242
    goto :goto_8

    .line 243
    :cond_2
    const-string v2, "UTF-8"

    .line 244
    .line 245
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v1, v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mTemplateManager:Landroid/content/om/wallpapertheme/TemplateManager;

    .line 250
    .line 251
    invoke-virtual {v1, v0}, Landroid/content/om/wallpapertheme/TemplateManager;->initTemplate(Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    const-string v0, "ThemePark\'s template is loaded"

    .line 255
    .line 256
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 257
    .line 258
    .line 259
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 260
    .line 261
    .line 262
    goto :goto_d

    .line 263
    :catch_5
    move-exception v0

    .line 264
    goto :goto_a

    .line 265
    :catchall_2
    move-exception v0

    .line 266
    :try_start_c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 267
    .line 268
    .line 269
    goto :goto_9

    .line 270
    :catchall_3
    move-exception v1

    .line 271
    :try_start_d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 272
    .line 273
    .line 274
    :goto_9
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 275
    :goto_a
    const-string v1, "Failed to set as ThemePark\'s template on init, e : "

    .line 276
    .line 277
    invoke-static {v0, v1, p0}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    goto :goto_d

    .line 281
    :goto_b
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 282
    .line 283
    .line 284
    throw p0

    .line 285
    :goto_c
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :cond_3
    :goto_d
    return-void
.end method

.method public final initWallpaperTheme()Landroid/content/om/OverlayManagerTransaction;
    .locals 10

    .line 1
    const-string/jumbo v0, "ms"

    .line 2
    .line 3
    .line 4
    const-string v1, "SWT_WTM_Wrapper"

    .line 5
    .line 6
    iget-object v2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 7
    .line 8
    const-string v3, "init color theme metadata has finished : "

    .line 9
    .line 10
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v4

    .line 14
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getColorThemeState()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    sget-object v7, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v7}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    if-eqz v7, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->deleteAllFilesInDir()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception p0

    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_0
    :goto_0
    const/4 v7, 0x1

    .line 34
    if-ne v6, v7, :cond_6

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    .line 37
    .line 38
    .line 39
    new-instance v6, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    sub-long/2addr v7, v4

    .line 49
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->readLastPalette()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    move-object v6, v3

    .line 70
    check-cast v6, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_1

    .line 77
    .line 78
    const-string/jumbo v6, "restore palette overlays"

    .line 79
    .line 80
    .line 81
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    new-instance v6, Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .line 88
    .line 89
    new-instance v7, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-static {v3, v6, v7}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->splitPalette(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    .line 95
    .line 96
    .line 97
    move-result v3

    .line 98
    iget-object v8, v2, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->mPalette:Landroid/content/om/wallpapertheme/ThemePalette;

    .line 99
    .line 100
    invoke-virtual {v8, v6, v7, v3}, Landroid/content/om/wallpapertheme/ThemePalette;->setPalette(Ljava/util/List;Ljava/util/List;Z)V

    .line 101
    .line 102
    .line 103
    :cond_1
    sget-object v3, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-static {v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    new-instance v3, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 112
    .line 113
    invoke-direct {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 114
    .line 115
    .line 116
    iget-object v6, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    .line 117
    .line 118
    new-instance v7, Landroid/content/om/OverlayIdentifier;

    .line 119
    .line 120
    const-string v8, "android"

    .line 121
    .line 122
    const-string v9, "MonetPalette"

    .line 123
    .line 124
    invoke-direct {v7, v8, v9}, Landroid/content/om/OverlayIdentifier;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v6, v6, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 128
    .line 129
    const/4 v8, 0x0

    .line 130
    invoke-virtual {v6, v7, v8}, Lcom/android/server/om/OverlayManagerSettings;->getNullableOverlayInfo(Landroid/content/om/OverlayIdentifier;I)Landroid/content/om/OverlayInfo;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    invoke-virtual {v2, v3, v6}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->restoreMonetOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Landroid/content/om/OverlayInfo;)V

    .line 135
    .line 136
    .line 137
    const-string/jumbo v6, "regenerate color theme overlays"

    .line 138
    .line 139
    .line 140
    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->registerThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->enableThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 147
    .line 148
    .line 149
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    .line 150
    .line 151
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    new-instance v6, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    check-cast p0, Landroid/util/ArraySet;

    .line 163
    .line 164
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v7

    .line 172
    if-eqz v7, :cond_3

    .line 173
    .line 174
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Landroid/util/Pair;

    .line 179
    .line 180
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v8, Landroid/content/om/OverlayIdentifier;

    .line 183
    .line 184
    invoke-virtual {v8}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    if-eqz v8, :cond_2

    .line 189
    .line 190
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 191
    .line 192
    check-cast v8, Landroid/content/om/OverlayIdentifier;

    .line 193
    .line 194
    invoke-virtual {v8}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    const-string v9, "SemWT_"

    .line 199
    .line 200
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_2

    .line 205
    .line 206
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v7, Landroid/content/om/OverlayIdentifier;

    .line 209
    .line 210
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 215
    .line 216
    .line 217
    move-result p0

    .line 218
    if-nez p0, :cond_4

    .line 219
    .line 220
    const-string/jumbo p0, "unregister unnecessary color theme overlays for fota upgrade"

    .line 221
    .line 222
    .line 223
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    invoke-virtual {v2, v3, v6}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->unregisterNotExistedOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/util/ArrayList;)V

    .line 227
    .line 228
    .line 229
    :cond_4
    const-string p0, "SWT_ThemeManager"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    .line 231
    :try_start_1
    new-instance v2, Ljava/io/File;

    .line 232
    .line 233
    const-string v6, "/data/overlays/wallpapertheme/"

    .line 234
    .line 235
    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 239
    .line 240
    .line 241
    move-result v6

    .line 242
    if-eqz v6, :cond_5

    .line 243
    .line 244
    const/16 v6, 0x1ff

    .line 245
    .line 246
    const/4 v7, -0x1

    .line 247
    invoke-static {v2, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 248
    .line 249
    .line 250
    const-string/jumbo v2, "success to change color theme directory permissions"

    .line 251
    .line 252
    .line 253
    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    .line 255
    .line 256
    goto :goto_2

    .line 257
    :catch_1
    move-exception v2

    .line 258
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    const-string v7, "failed setPermissionsDirIfExisted, e:"

    .line 261
    .line 262
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v2

    .line 272
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    :cond_5
    :goto_2
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 276
    .line 277
    invoke-static {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->updateFotaUpgradeStatus(Landroid/content/Context;)V

    .line 278
    .line 279
    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    .line 281
    .line 282
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    .line 284
    .line 285
    const-string/jumbo v2, "restoring color theme has finished, ready : "

    .line 286
    .line 287
    .line 288
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 292
    .line 293
    .line 294
    move-result-wide v6

    .line 295
    sub-long/2addr v6, v4

    .line 296
    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object p0

    .line 306
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .line 308
    .line 309
    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 310
    .line 311
    .line 312
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 313
    return-object p0

    .line 314
    :goto_3
    const-string v0, "failed initWallpaperTheme, wallpaper theming will not working, ex = "

    .line 315
    .line 316
    invoke-static {p0, v0, v1}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_6
    const/4 p0, 0x0

    .line 320
    return-object p0
.end method

.method public final unregisterThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mSettings:Lcom/android/server/om/OverlayManagerSettingsHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerSettingsHelper;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getAllIdentifiersAndBaseCodePaths()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    check-cast v0, Landroid/util/ArraySet;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroid/util/Pair;

    .line 31
    .line 32
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 35
    .line 36
    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Landroid/content/om/OverlayIdentifier;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroid/content/om/OverlayIdentifier;->getOverlayName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const-string v4, "ThemePark_"

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    .line 58
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_3

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 73
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Landroid/content/om/OverlayIdentifier;

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/content/om/OverlayManagerTransaction$Builder;->unregisterFabricatedOverlay(Landroid/content/om/OverlayIdentifier;)Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->saveThemeParkSingleThemeState()V

    .line 98
    .line 99
    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string p1, "[ThemePark FRRO] unregister ThemePark overlay : "

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    const-string p1, "SWT_ThemeManager"

    .line 115
    .line 116
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    :cond_3
    return-void
.end method
