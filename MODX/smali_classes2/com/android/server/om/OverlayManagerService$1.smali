.class public final Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/om/OverlayManagerService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lcom/android/server/om/OverlayManagerService$1;->$r8$classId:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string p1, "[ACTION_USER_ADDED] userId : "

    .line 8
    .line 9
    const-string v1, "Updating overlays for added user "

    .line 10
    .line 11
    const-string v2, "android.intent.extra.user_handle"

    .line 12
    .line 13
    const/16 v3, -0x2710

    .line 14
    .line 15
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    const-wide/32 v4, 0x4000000

    .line 27
    .line 28
    .line 29
    const-string v6, "android.intent.action.USER_REMOVED"

    .line 30
    .line 31
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_3

    .line 36
    .line 37
    const-string v0, "android.intent.action.USER_ADDED"

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-nez p2, :cond_0

    .line 44
    .line 45
    goto/16 :goto_5

    .line 46
    .line 47
    :cond_0
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    .line 54
    .line 55
    invoke-virtual {p2, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserInfo(I)Landroid/content/pm/UserInfo;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    if-eq v2, v3, :cond_5

    .line 60
    .line 61
    if-eqz p2, :cond_1

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isMain()Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    goto/16 :goto_5

    .line 70
    .line 71
    :cond_1
    :try_start_0
    const-string p2, "OverlayManager"

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    const-string p2, "OMS ACTION_USER_ADDED"

    .line 89
    .line 90
    invoke-static {v4, v5, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 94
    .line 95
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 96
    .line 97
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    const-string v0, "OMS_DEBUG"

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 116
    .line 117
    iget-object v0, p1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 118
    .line 119
    invoke-virtual {v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/om/OverlayManagerService;->updatePackageManagerLocked(Ljava/util/Set;)Landroid/util/SparseArray;

    .line 124
    .line 125
    .line 126
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mOverlayManagerServiceExt:Lcom/android/server/om/OverlayManagerServiceExt;

    .line 129
    .line 130
    if-eqz p1, :cond_2

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Lcom/android/server/om/OverlayManagerServiceExt;->handleUserSwitch(I)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catchall_0
    move-exception p0

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 139
    .line 140
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    .line 143
    .line 144
    invoke-virtual {p0, v2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->syncWallpaperThemeStateForUser(I)V

    .line 145
    .line 146
    .line 147
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 149
    .line 150
    .line 151
    goto :goto_5

    .line 152
    :goto_1
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 154
    :catchall_1
    move-exception p0

    .line 155
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 156
    .line 157
    .line 158
    throw p0

    .line 159
    :cond_3
    if-eq v2, v3, :cond_5

    .line 160
    .line 161
    :try_start_4
    const-string p1, "OMS ACTION_USER_REMOVED"

    .line 162
    .line 163
    invoke-static {v4, v5, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 167
    .line 168
    iget-object p1, p1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 169
    .line 170
    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 171
    :try_start_5
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 172
    .line 173
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 176
    .line 177
    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    const-string/jumbo v3, "onUserRemoved userId="

    .line 181
    .line 182
    .line 183
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const-string v3, "OverlayManager"

    .line 194
    .line 195
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .line 197
    .line 198
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 199
    .line 200
    invoke-virtual {p2, v2}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)V

    .line 201
    .line 202
    .line 203
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 204
    .line 205
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    .line 206
    .line 207
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 208
    .line 209
    monitor-enter p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 210
    :try_start_6
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 211
    .line 212
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    sub-int/2addr v1, v0

    .line 217
    :goto_2
    if-ltz v1, :cond_4

    .line 218
    .line 219
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->mCache:Landroid/util/ArrayMap;

    .line 220
    .line 221
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    check-cast v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;

    .line 226
    .line 227
    invoke-virtual {p0, v0, v2}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->removePackageUser(Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl$PackageStateUsers;I)V

    .line 228
    .line 229
    .line 230
    add-int/lit8 v1, v1, -0x1

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :catchall_2
    move-exception p0

    .line 234
    goto :goto_3

    .line 235
    :cond_4
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 236
    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 237
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 238
    .line 239
    .line 240
    goto :goto_5

    .line 241
    :catchall_3
    move-exception p0

    .line 242
    goto :goto_4

    .line 243
    :goto_3
    :try_start_8
    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 244
    :try_start_9
    throw p0

    .line 245
    :goto_4
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 246
    :try_start_a
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 247
    :catchall_4
    move-exception p0

    .line 248
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 249
    .line 250
    .line 251
    throw p0

    .line 252
    :cond_5
    :goto_5
    return-void

    .line 253
    :pswitch_0
    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->isFotaUpgrade(Landroid/content/Context;)Z

    .line 254
    .line 255
    .line 256
    move-result p2

    .line 257
    if-eqz p2, :cond_7

    .line 258
    .line 259
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 260
    .line 261
    iget-object p2, p2, Lcom/android/server/om/OverlayManagerService;->mWallpaperThemeManager:Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;

    .line 262
    .line 263
    invoke-virtual {p2}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManagerWrapper;->getColorThemeState()I

    .line 264
    .line 265
    .line 266
    move-result p2

    .line 267
    if-ne p2, v0, :cond_6

    .line 268
    .line 269
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 270
    .line 271
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->setDynamicContrastToStandard()V

    .line 272
    .line 273
    .line 274
    goto :goto_6

    .line 275
    :cond_6
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lcom/android/server/om/OverlayManagerService;->disableDynamicContrast(Z)V

    .line 278
    .line 279
    .line 280
    invoke-static {p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeUtils;->updateFotaUpgradeStatus(Landroid/content/Context;)V

    .line 281
    .line 282
    .line 283
    :cond_7
    :goto_6
    return-void

    .line 284
    nop

    .line 285
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
