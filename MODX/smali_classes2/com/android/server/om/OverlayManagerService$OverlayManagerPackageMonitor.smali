.class public final Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAppearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "android.intent.extra.REPLACING"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const-wide/32 v3, 0x4000000

    .line 18
    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    const-string p2, "OMS#onPackageReplaced "

    .line 23
    .line 24
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 40
    .line 41
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    :try_start_1
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 43
    .line 44
    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 53
    .line 54
    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 55
    .line 56
    .line 57
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    :try_start_2
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 61
    .line 62
    invoke-virtual {v1, p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {v0, p0, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception p0

    .line 73
    :try_start_3
    const-string v1, "OverlayManager"

    .line 74
    .line 75
    const-string/jumbo v2, "onPackageReplaced internal error"

    .line 76
    .line 77
    .line 78
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 83
    .line 84
    .line 85
    goto :goto_3

    .line 86
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 87
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 88
    :catchall_1
    move-exception p0

    .line 89
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_1
    const-string p2, "OMS#onPackageAdded "

    .line 94
    .line 95
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    invoke-static {v3, v4, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 111
    .line 112
    monitor-enter p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 113
    :try_start_7
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 114
    .line 115
    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    if-eqz v1, :cond_2

    .line 120
    .line 121
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 122
    .line 123
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 124
    .line 125
    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 126
    .line 127
    .line 128
    move-result v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 129
    if-nez v1, :cond_2

    .line 130
    .line 131
    :try_start_8
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 134
    .line 135
    .line 136
    new-instance v5, Landroid/util/ArraySet;

    .line 137
    .line 138
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-static {p0, p1}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, p0, v2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v5, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_8
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 156
    .line 157
    .line 158
    goto :goto_2

    .line 159
    :catchall_2
    move-exception p0

    .line 160
    goto :goto_5

    .line 161
    :catch_1
    move-exception p0

    .line 162
    :try_start_9
    const-string v1, "OverlayManager"

    .line 163
    .line 164
    const-string/jumbo v2, "onPackageAdded internal error"

    .line 165
    .line 166
    .line 167
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .line 169
    .line 170
    :cond_2
    :goto_2
    monitor-exit p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 171
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    .line 173
    .line 174
    :goto_3
    iget-object p0, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 175
    .line 176
    iget-object p2, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getColorThemeState()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    const/4 v1, -0x1

    .line 183
    if-eq v0, v1, :cond_3

    .line 184
    .line 185
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->initTemplateMetadataIfNeeded()V

    .line 186
    .line 187
    .line 188
    sget-object p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 191
    .line 192
    .line 193
    move-result-object p0

    .line 194
    const-wide/16 v1, 0x2280

    .line 195
    .line 196
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    invoke-virtual {p2, p0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateTemplateMetadataFromPkg(Landroid/content/pm/PackageInfo;)V

    .line 205
    .line 206
    .line 207
    new-instance p0, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 208
    .line 209
    invoke-direct {p0}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, p0, p1, v0}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->updateThemeOverlay(Landroid/content/om/OverlayManagerTransaction$Builder;Ljava/lang/String;I)V

    .line 213
    .line 214
    .line 215
    const-string/jumbo p1, "overlay"

    .line 216
    .line 217
    .line 218
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-static {p1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p0}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 227
    .line 228
    .line 229
    move-result-object p0

    .line 230
    invoke-interface {p1, p0}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :catch_2
    move-exception p0

    .line 235
    const-string p1, "FAILED at commit for packageAdded, e="

    .line 236
    .line 237
    const-string p2, "SWT_WTM_Wrapper"

    .line 238
    .line 239
    invoke-static {p0, p1, p2}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :cond_3
    :goto_4
    return-void

    .line 243
    :goto_5
    :try_start_b
    monitor-exit p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 244
    :try_start_c
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 245
    :catchall_3
    move-exception p0

    .line 246
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 247
    .line 248
    .line 249
    throw p0
.end method

.method public final onPackageChangedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    .line 11
    .line 12
    const-string v2, "android.intent.extra.REASON"

    .line 13
    .line 14
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    if-nez p2, :cond_1

    .line 23
    .line 24
    const-string p2, "OMS#onPackageChanged "

    .line 25
    .line 26
    const-wide/32 v1, 0x4000000

    .line 27
    .line 28
    .line 29
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 45
    .line 46
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 47
    :try_start_1
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 48
    .line 49
    invoke-virtual {v3, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 58
    .line 59
    invoke-virtual {v3, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-nez v3, :cond_0

    .line 64
    .line 65
    :try_start_2
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 66
    .line 67
    const/16 v4, 0x8

    .line 68
    .line 69
    invoke-virtual {v3, p0, v4, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const/4 p1, 0x0

    .line 74
    invoke-virtual {v0, p0, p1}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    :try_start_3
    const-string p1, "OverlayManager"

    .line 82
    .line 83
    const-string/jumbo v0, "onPackageChanged internal error"

    .line 84
    .line 85
    .line 86
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_0
    :goto_0
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :goto_1
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 96
    :catchall_1
    move-exception p0

    .line 97
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 98
    .line 99
    .line 100
    throw p0

    .line 101
    :cond_1
    :goto_2
    return-void
.end method

.method public final onPackageDisappearedWithExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayManagerPackageMonitor;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v1, "android.intent.extra.REPLACING"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const-string v3, "android.intent.extra.SYSTEM_UPDATE_UNINSTALL"

    .line 18
    .line 19
    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const-string v4, "android.intent.extra.HIDDEN"

    .line 24
    .line 25
    invoke-virtual {p2, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const-wide/32 v4, 0x4000000

    .line 30
    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    const-string p2, "OMS#onPackageReplacing "

    .line 35
    .line 36
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {v4, v5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p2, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 55
    .line 56
    invoke-virtual {v1, p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->addPackageUser(ILjava/lang/String;)Lcom/android/server/pm/pkg/PackageState;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 63
    .line 64
    iget-object v1, v1, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 65
    .line 66
    invoke-virtual {v1, p1, p0}, Landroid/content/pm/PackageManagerInternal;->isInstantApp(Ljava/lang/String;I)Z

    .line 67
    .line 68
    .line 69
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    :try_start_2
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    const/4 v6, 0x6

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    const/4 v6, 0x2

    .line 82
    :goto_0
    invoke-virtual {v1, p0, v6, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->reconcileSettingsForPackage(IILjava/lang/String;)Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V
    :try_end_2
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    if-eqz v3, :cond_3

    .line 90
    .line 91
    :try_start_3
    iget-object v0, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 92
    .line 93
    const-string v1, "android"

    .line 94
    .line 95
    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPaths(ILjava/lang/String;Z)Landroid/content/pm/overlay/OverlayPaths;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_2

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/String;

    .line 118
    .line 119
    if-eqz v2, :cond_1

    .line 120
    .line 121
    const-string v3, "/data/overlays/currentstyle"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    if-nez v3, :cond_3

    .line 128
    .line 129
    const-string v3, "/data/resource-cache/android-SemWT"

    .line 130
    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    if-eqz v2, :cond_1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :catchall_0
    move-exception p0

    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception p0

    .line 141
    goto :goto_1

    .line 142
    :cond_2
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 149
    .line 150
    new-instance v2, Landroid/util/ArrayMap;

    .line 151
    .line 152
    const/4 v3, 0x1

    .line 153
    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    new-instance v0, Ljava/util/HashSet;

    .line 160
    .line 161
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v3, Ljava/util/HashSet;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v1, p0, v2, v0, v3}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILandroid/util/ArrayMap;Ljava/util/Set;Ljava/util/Set;)V

    .line 170
    .line 171
    .line 172
    const-string p0, "OverlayManager"

    .line 173
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v1, "OM_BUG_FIX_LOST_OVERLAY_WHEN_UPDATE_UNINSTALL : "

    .line 180
    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 192
    .line 193
    .line 194
    goto :goto_2

    .line 195
    :goto_1
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Lcom/android/server/om/OverlayManagerServiceImpl$OperationFailedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :catch_1
    move-exception p0

    .line 200
    :try_start_5
    const-string p1, "OverlayManager"

    .line 201
    .line 202
    const-string/jumbo v0, "onPackageReplacing internal error"

    .line 203
    .line 204
    .line 205
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .line 207
    .line 208
    :cond_3
    :goto_2
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_6

    .line 213
    .line 214
    :goto_3
    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 216
    :catchall_1
    move-exception p0

    .line 217
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    .line 219
    .line 220
    throw p0

    .line 221
    :cond_4
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    .line 225
    .line 226
    const-string v3, "com.samsung.android.themedesigner"

    .line 227
    .line 228
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_6

    .line 233
    .line 234
    const-string v3, "/data/overlays/themepark/state_applied.txt"

    .line 235
    .line 236
    invoke-static {v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v3

    .line 240
    const/4 v6, 0x0

    .line 241
    if-eqz v3, :cond_5

    .line 242
    .line 243
    invoke-virtual {v1, v6, v6, v2, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->applyWallpaperColor(Ljava/util/List;Ljava/util/List;ZZ)V

    .line 244
    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_5
    new-instance v3, Landroid/content/om/OverlayManagerTransaction$Builder;

    .line 248
    .line 249
    invoke-direct {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;-><init>()V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v3}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->unregisterThemeParkOverlays(Landroid/content/om/OverlayManagerTransaction$Builder;)V

    .line 253
    .line 254
    .line 255
    :try_start_8
    const-string/jumbo v1, "overlay"

    .line 256
    .line 257
    .line 258
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v3}, Landroid/content/om/OverlayManagerTransaction$Builder;->build()Landroid/content/om/OverlayManagerTransaction;

    .line 267
    .line 268
    .line 269
    move-result-object v3

    .line 270
    invoke-interface {v1, v3}, Landroid/content/om/IOverlayManager;->commit(Landroid/content/om/OverlayManagerTransaction;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 271
    .line 272
    .line 273
    goto :goto_4

    .line 274
    :catch_2
    move-exception v1

    .line 275
    const-string v3, "FAILED at commit, e= "

    .line 276
    .line 277
    const-string v7, "SWT_WTM_Wrapper"

    .line 278
    .line 279
    invoke-static {v1, v3, v7}, Lcom/android/server/DirEncryptServiceHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    :goto_4
    new-instance v1, Ljava/io/File;

    .line 283
    .line 284
    const-string v3, "/data/overlays/themepark/icons/"

    .line 285
    .line 286
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    if-eqz v3, :cond_6

    .line 294
    .line 295
    invoke-static {v1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->deleteFile(Ljava/io/File;)V

    .line 296
    .line 297
    .line 298
    sget-object v1, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mContext:Landroid/content/Context;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    const-string v3, "current_sec_appicon_theme_package"

    .line 305
    .line 306
    invoke-static {v1, v3, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 307
    .line 308
    .line 309
    :cond_6
    const-string v1, "OMS#onPackageRemoved "

    .line 310
    .line 311
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 324
    .line 325
    .line 326
    iget-object v1, v0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 327
    .line 328
    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 329
    :try_start_a
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 330
    .line 331
    iget-object v6, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 332
    .line 333
    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 334
    :try_start_b
    iget-object v7, v3, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 335
    .line 336
    invoke-virtual {v7, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v7

    .line 340
    check-cast v7, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 341
    .line 342
    if-nez v7, :cond_7

    .line 343
    .line 344
    monitor-exit v6

    .line 345
    goto :goto_5

    .line 346
    :catchall_2
    move-exception p0

    .line 347
    goto :goto_7

    .line 348
    :cond_7
    invoke-virtual {v3, v7, p0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V

    .line 349
    .line 350
    .line 351
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 352
    :goto_5
    :try_start_c
    iget-object v3, v0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 353
    .line 354
    invoke-virtual {v3, p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onPackageRemoved(ILjava/lang/String;Z)Ljava/util/Set;

    .line 355
    .line 356
    .line 357
    move-result-object p0

    .line 358
    invoke-virtual {v0, p0, v2}, Lcom/android/server/om/OverlayManagerService;->updateTargetPackagesLocked(Ljava/util/Set;Z)V

    .line 359
    .line 360
    .line 361
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 362
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    .line 364
    .line 365
    :goto_6
    return-void

    .line 366
    :catchall_3
    move-exception p0

    .line 367
    goto :goto_8

    .line 368
    :goto_7
    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 369
    :try_start_e
    throw p0

    .line 370
    :goto_8
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 371
    :try_start_f
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 372
    :catchall_4
    move-exception p0

    .line 373
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 374
    .line 375
    .line 376
    throw p0
.end method
