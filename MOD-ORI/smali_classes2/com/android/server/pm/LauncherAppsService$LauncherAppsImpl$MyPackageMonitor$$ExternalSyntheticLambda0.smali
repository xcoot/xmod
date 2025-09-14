.class public final synthetic Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;

    .line 4
    .line 5
    iget-object v15, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    .line 7
    iget v14, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor$$ExternalSyntheticLambda0;->f$2:I

    .line 8
    .line 9
    const-string v13, "LauncherAppsService"

    .line 10
    .line 11
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 16
    .line 17
    .line 18
    move-result v12

    .line 19
    :try_start_0
    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 20
    .line 21
    .line 22
    move-result-object v11

    .line 23
    const/4 v0, 0x0

    .line 24
    move v10, v0

    .line 25
    :goto_0
    if-ge v10, v12, :cond_3

    .line 26
    .line 27
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 30
    .line 31
    invoke-virtual {v0, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroid/content/pm/IOnAppsChangedListener;

    .line 36
    .line 37
    iget-object v2, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 38
    .line 39
    iget-object v2, v2, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 40
    .line 41
    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 46
    .line 47
    iget-object v3, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 48
    .line 49
    const-string/jumbo v4, "onShortcutChanged"

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v11, v2, v4}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isEnabledProfileOf(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    if-nez v3, :cond_0

    .line 57
    .line 58
    :goto_1
    move/from16 v18, v10

    .line 59
    .line 60
    move-object v2, v11

    .line 61
    move/from16 v16, v12

    .line 62
    .line 63
    move-object v4, v13

    .line 64
    move/from16 v17, v14

    .line 65
    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_0
    iget-object v3, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 69
    .line 70
    invoke-virtual {v3, v11, v2, v15}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->isPackageVisibleToListener(Landroid/os/UserHandle;Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object v3, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 78
    .line 79
    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 84
    .line 85
    iget-object v4, v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 86
    .line 87
    iget-object v5, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 88
    .line 89
    iget v6, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 90
    .line 91
    iget v7, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 92
    .line 93
    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/content/pm/ShortcutServiceInternal;->hasShortcutHostPermission(ILjava/lang/String;II)Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_2

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v4, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 101
    .line 102
    iget-object v4, v4, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mShortcutServiceInternal:Landroid/content/pm/ShortcutServiceInternal;

    .line 103
    .line 104
    iget-object v5, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    iget v9, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 107
    .line 108
    iget v8, v2, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    .line 110
    const/16 v16, 0x41f

    .line 111
    .line 112
    const-wide/16 v6, 0x0

    .line 113
    .line 114
    const/16 v17, 0x0

    .line 115
    .line 116
    const/16 v18, 0x0

    .line 117
    .line 118
    const/16 v19, 0x0

    .line 119
    .line 120
    move-object v2, v4

    .line 121
    move-object v4, v5

    .line 122
    move-wide v5, v6

    .line 123
    move-object v7, v15

    .line 124
    move/from16 v20, v8

    .line 125
    .line 126
    move-object/from16 v8, v17

    .line 127
    .line 128
    move/from16 v17, v9

    .line 129
    .line 130
    move-object/from16 v9, v18

    .line 131
    .line 132
    move/from16 v18, v10

    .line 133
    .line 134
    move-object/from16 v10, v19

    .line 135
    .line 136
    move-object/from16 v21, v11

    .line 137
    .line 138
    move/from16 v11, v16

    .line 139
    .line 140
    move/from16 v16, v12

    .line 141
    .line 142
    move v12, v14

    .line 143
    move-object/from16 v22, v13

    .line 144
    .line 145
    move/from16 v13, v17

    .line 146
    .line 147
    move/from16 v17, v14

    .line 148
    .line 149
    move/from16 v14, v20

    .line 150
    .line 151
    :try_start_1
    invoke-virtual/range {v2 .. v14}, Landroid/content/pm/ShortcutServiceInternal;->getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/content/ComponentName;IIII)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    :try_start_2
    new-instance v3, Landroid/content/pm/ParceledListSlice;

    .line 156
    .line 157
    invoke-direct {v3, v2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 158
    .line 159
    .line 160
    move-object/from16 v2, v21

    .line 161
    .line 162
    :try_start_3
    invoke-interface {v0, v2, v15, v3}, Landroid/content/pm/IOnAppsChangedListener;->onShortcutChanged(Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    .line 164
    .line 165
    move-object/from16 v4, v22

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :catchall_0
    move-exception v0

    .line 169
    goto :goto_7

    .line 170
    :catch_0
    move-exception v0

    .line 171
    move-object/from16 v4, v22

    .line 172
    .line 173
    goto :goto_5

    .line 174
    :catch_1
    move-exception v0

    .line 175
    goto :goto_2

    .line 176
    :catch_2
    move-exception v0

    .line 177
    move-object/from16 v2, v21

    .line 178
    .line 179
    :goto_2
    :try_start_4
    const-string v3, "Callback failed "
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 180
    .line 181
    move-object/from16 v4, v22

    .line 182
    .line 183
    :try_start_5
    invoke-static {v4, v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    .line 185
    .line 186
    :goto_3
    add-int/lit8 v10, v18, 0x1

    .line 187
    .line 188
    move-object v11, v2

    .line 189
    move-object v13, v4

    .line 190
    move/from16 v12, v16

    .line 191
    .line 192
    move/from16 v14, v17

    .line 193
    .line 194
    goto/16 :goto_0

    .line 195
    .line 196
    :catch_3
    move-exception v0

    .line 197
    goto :goto_5

    .line 198
    :catch_4
    move-exception v0

    .line 199
    move-object v4, v13

    .line 200
    goto :goto_5

    .line 201
    :cond_3
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 202
    .line 203
    :goto_4
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 204
    .line 205
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 206
    .line 207
    .line 208
    goto :goto_6

    .line 209
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    .line 215
    .line 216
    iget-object v0, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 217
    .line 218
    goto :goto_4

    .line 219
    :goto_6
    return-void

    .line 220
    :goto_7
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 221
    .line 222
    iget-object v1, v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 225
    .line 226
    .line 227
    throw v0
.end method
