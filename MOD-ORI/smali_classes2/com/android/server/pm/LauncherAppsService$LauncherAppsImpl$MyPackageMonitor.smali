.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    new-instance v3, Landroid/os/UserHandle;

    .line 6
    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "Calling onPackageAdded: "

    .line 25
    .line 26
    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v6, ", uid: "

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    move/from16 v6, p2

    .line 38
    .line 39
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v7, "LauncherAppsService"

    .line 47
    .line 48
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    move v8, v0

    .line 53
    :goto_0
    if-ge v8, v4, :cond_2

    .line 54
    .line 55
    :try_start_0
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 58
    .line 59
    invoke-virtual {v0, v8}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    .line 64
    .line 65
    iget-object v9, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 66
    .line 67
    iget-object v9, v9, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 68
    .line 69
    invoke-virtual {v9, v8}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    check-cast v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 74
    .line 75
    iget-object v10, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 76
    .line 77
    const-string/jumbo v11, "onPackageAdded"

    .line 78
    .line 79
    .line 80
    invoke-virtual {v10, v3, v9, v11}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    const-string v11, ")"

    .line 85
    .line 86
    const-string v12, ", "

    .line 87
    .line 88
    const-string v13, "("

    .line 89
    .line 90
    const-string v14, ", listener: "

    .line 91
    .line 92
    iget v15, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 93
    .line 94
    move/from16 v16, v4

    .line 95
    .line 96
    iget-object v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 97
    .line 98
    if-nez v10, :cond_0

    .line 99
    .line 100
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v10, "Skip onPackageAdded(not enabled): "

    .line 106
    .line 107
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 123
    .line 124
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :catchall_0
    move-exception v0

    .line 145
    goto :goto_2

    .line 146
    :cond_0
    iget-object v10, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 147
    .line 148
    invoke-virtual {v10, v3, v9, v2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 149
    .line 150
    .line 151
    move-result v10

    .line 152
    if-nez v10, :cond_1

    .line 153
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v10, "Skip onPackageAdded(not visible): "

    .line 160
    .line 161
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    iget-object v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 177
    .line 178
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_1
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    iget-object v4, v9, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 219
    .line 220
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    invoke-interface {v0, v3, v2}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 240
    .line 241
    .line 242
    goto :goto_1

    .line 243
    :catch_0
    move-exception v0

    .line 244
    :try_start_3
    const-string v4, "Callback failed "

    .line 245
    .line 246
    invoke-static {v7, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    .line 248
    .line 249
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 250
    .line 251
    move/from16 v4, v16

    .line 252
    .line 253
    goto/16 :goto_0

    .line 254
    .line 255
    :goto_2
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 256
    .line 257
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 260
    .line 261
    .line 262
    throw v0

    .line 263
    :cond_2
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 268
    .line 269
    .line 270
    invoke-super/range {p0 .. p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 274
    .line 275
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 276
    .line 277
    new-instance v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;

    .line 278
    .line 279
    invoke-direct {v4, v0, v2, v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    invoke-virtual {v1, v2, v4, v0}, Landroid/content/pm/PackageManagerInternal;->registerInstalledLoadingProgressCallback(Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageLoadingProgressCallback;I)Z

    .line 287
    .line 288
    .line 289
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_2

    .line 11
    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 13
    .line 14
    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Landroid/content/pm/IOnAppsChangedListener;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 23
    .line 24
    iget-object v3, v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 25
    .line 26
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 31
    .line 32
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 33
    .line 34
    const-string/jumbo v5, "onPackageModified"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, p2, v3, v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 45
    .line 46
    invoke-virtual {v4, p2, v3, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :try_start_1
    invoke-interface {v2, p2, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catchall_0
    move-exception p1

    .line 58
    goto :goto_2

    .line 59
    :catch_0
    move-exception v2

    .line 60
    :try_start_2
    const-string v3, "LauncherAppsService"

    .line 61
    .line 62
    const-string v4, "Callback failed "

    .line 63
    .line 64
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 71
    .line 72
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 79
    .line 80
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public final onPackageModified(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPackageStateChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 11
    .line 12
    .line 13
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageStateChanged(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onPackagesAvailable([Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 42
    .line 43
    const-string/jumbo v6, "onPackagesAvailable"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 54
    .line 55
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v3

    .line 77
    :try_start_2
    const-string v4, "LauncherAppsService"

    .line 78
    .line 79
    const-string v5, "Callback failed "

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 100
    .line 101
    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onPackagesSuspended([Ljava/lang/String;)V
    .locals 11

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    new-instance v2, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    array-length v3, p1

    .line 21
    const/4 v4, 0x0

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-ge v5, v3, :cond_1

    .line 24
    .line 25
    aget-object v6, p1, v5

    .line 26
    .line 27
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 28
    .line 29
    iget-object v7, v7, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    invoke-virtual {v7, v8, v6}, Landroid/content/pm/PackageManagerInternal;->getSuspendedPackageLauncherExtras(ILjava/lang/String;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    new-instance v8, Landroid/util/Pair;

    .line 42
    .line 43
    invoke-direct {v8, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    new-array p1, p1, [Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Ljava/lang/String;

    .line 67
    .line 68
    iget-object v2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 69
    .line 70
    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 71
    .line 72
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    move v3, v4

    .line 77
    :goto_2
    if-ge v3, v2, :cond_6

    .line 78
    .line 79
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 80
    .line 81
    iget-object v5, v5, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 82
    .line 83
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    check-cast v5, Landroid/content/pm/IOnAppsChangedListener;

    .line 88
    .line 89
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 90
    .line 91
    iget-object v6, v6, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 92
    .line 93
    invoke-virtual {v6, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    check-cast v6, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 98
    .line 99
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 100
    .line 101
    const-string/jumbo v8, "onPackagesSuspended"

    .line 102
    .line 103
    .line 104
    invoke-virtual {v7, v0, v6, v8}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v7

    .line 108
    if-nez v7, :cond_2

    .line 109
    .line 110
    goto :goto_7

    .line 111
    :cond_2
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 112
    .line 113
    invoke-static {v7, p1, v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_3

    .line 122
    .line 123
    const/4 v8, 0x0

    .line 124
    invoke-interface {v5, v0, v7, v8}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto :goto_8

    .line 130
    :catch_0
    move-exception v5

    .line 131
    goto :goto_6

    .line 132
    :cond_3
    :goto_3
    move v7, v4

    .line 133
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 134
    .line 135
    .line 136
    move-result v8

    .line 137
    if-ge v7, v8, :cond_5

    .line 138
    .line 139
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    check-cast v8, Landroid/util/Pair;

    .line 144
    .line 145
    iget-object v9, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 146
    .line 147
    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 148
    .line 149
    check-cast v10, Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v9, v0, v6, v10}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-nez v9, :cond_4

    .line 156
    .line 157
    goto :goto_5

    .line 158
    :cond_4
    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 159
    .line 160
    check-cast v9, Ljava/lang/String;

    .line 161
    .line 162
    filled-new-array {v9}, [Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v8, Landroid/os/Bundle;

    .line 169
    .line 170
    invoke-interface {v5, v0, v9, v8}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesSuspended(Landroid/os/UserHandle;[Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    .line 173
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :goto_6
    :try_start_2
    const-string v6, "LauncherAppsService"

    .line 177
    .line 178
    const-string v7, "Callback failed "

    .line 179
    .line 180
    invoke-static {v6, v7, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .line 182
    .line 183
    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :goto_8
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 187
    .line 188
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 189
    .line 190
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 191
    .line 192
    .line 193
    throw p1

    .line 194
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 195
    .line 196
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 197
    .line 198
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 42
    .line 43
    const-string/jumbo v6, "onPackagesUnavailable"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 54
    .line 55
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->isReplacing()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    invoke-interface {v3, v0, v4, v5}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_2

    .line 76
    :catch_0
    move-exception v3

    .line 77
    :try_start_2
    const-string v4, "LauncherAppsService"

    .line 78
    .line 79
    const-string v5, "Callback failed "

    .line 80
    .line 81
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 88
    .line 89
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 100
    .line 101
    .line 102
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    return-void
.end method

.method public final onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v0, Landroid/os/UserHandle;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v1, :cond_2

    .line 20
    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 22
    .line 23
    iget-object v3, v3, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 24
    .line 25
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 30
    .line 31
    iget-object v4, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 32
    .line 33
    iget-object v4, v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 34
    .line 35
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 40
    .line 41
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 42
    .line 43
    const-string/jumbo v6, "onPackagesUnsuspended"

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v0, v4, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 54
    .line 55
    invoke-static {v5, p1, v4, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$mgetFilteredPackageNames(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;[Ljava/lang/String;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Landroid/os/UserHandle;)[Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-eqz v5, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    :try_start_1
    invoke-interface {v3, v0, v4}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnsuspended(Landroid/os/UserHandle;[Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    goto :goto_2

    .line 72
    :catch_0
    move-exception v3

    .line 73
    :try_start_2
    const-string v4, "LauncherAppsService"

    .line 74
    .line 75
    const-string v5, "Callback failed "

    .line 76
    .line 77
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    .line 79
    .line 80
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :goto_2
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 84
    .line 85
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 86
    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 94
    .line 95
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 96
    .line 97
    .line 98
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnsuspended([Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final onShortcutChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->postToPackageMonitorHandler(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
