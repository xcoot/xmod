.class public final Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/pm/LauncherApps$ShortcutChangeCallback;


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;

.field public final mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerInternal;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 8
    .line 9
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v3, :cond_13

    .line 16
    .line 17
    iget-object v6, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 18
    .line 19
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    check-cast v6, Landroid/content/pm/IShortcutChangeCallback;

    .line 24
    .line 25
    iget-object v7, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 26
    .line 27
    invoke-virtual {v7, v5}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    check-cast v7, Landroid/util/Pair;

    .line 32
    .line 33
    iget-object v8, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v8, Landroid/os/UserHandle;

    .line 36
    .line 37
    const/4 v9, 0x1

    .line 38
    const/4 v10, 0x0

    .line 39
    if-eqz v8, :cond_1

    .line 40
    .line 41
    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    if-ne v2, v8, :cond_0

    .line 50
    .line 51
    move v8, v9

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object v8, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mUserManagerInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 54
    .line 55
    invoke-virtual {v8, v11, v12, v10, v4}, Lcom/android/server/pm/UserManagerInternal;->isProfileAccessible(IILjava/lang/String;Z)Z

    .line 56
    .line 57
    .line 58
    move-result v8

    .line 59
    :goto_1
    if-nez v8, :cond_1

    .line 60
    .line 61
    move-object/from16 v9, p2

    .line 62
    .line 63
    move/from16 v16, v3

    .line 64
    .line 65
    goto/16 :goto_c

    .line 66
    .line 67
    :cond_1
    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v7, Landroid/content/pm/ShortcutQueryWrapper;

    .line 70
    .line 71
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getChangedSince()J

    .line 72
    .line 73
    .line 74
    move-result-wide v11

    .line 75
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getPackage()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getShortcutIds()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getLocusIds()Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getActivity()Landroid/content/ComponentName;

    .line 88
    .line 89
    .line 90
    move-result-object v15

    .line 91
    invoke-virtual {v7}, Landroid/content/pm/ShortcutQueryWrapper;->getQueryFlags()I

    .line 92
    .line 93
    .line 94
    move-result v7

    .line 95
    if-eqz v8, :cond_3

    .line 96
    .line 97
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    if-nez v8, :cond_3

    .line 102
    .line 103
    :cond_2
    move-object/from16 v9, p2

    .line 104
    .line 105
    move/from16 v16, v3

    .line 106
    .line 107
    goto/16 :goto_b

    .line 108
    .line 109
    :cond_3
    new-instance v10, Ljava/util/ArrayList;

    .line 110
    .line 111
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .line 113
    .line 114
    and-int/lit8 v8, v7, 0x1

    .line 115
    .line 116
    if-eqz v8, :cond_4

    .line 117
    .line 118
    move v8, v9

    .line 119
    goto :goto_2

    .line 120
    :cond_4
    move v8, v4

    .line 121
    :goto_2
    and-int/lit8 v16, v7, 0x2

    .line 122
    .line 123
    if-eqz v16, :cond_5

    .line 124
    .line 125
    move/from16 v16, v9

    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_5
    move/from16 v16, v4

    .line 129
    .line 130
    :goto_3
    and-int/lit8 v17, v7, 0x8

    .line 131
    .line 132
    if-eqz v17, :cond_6

    .line 133
    .line 134
    move/from16 v17, v9

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_6
    move/from16 v17, v4

    .line 138
    .line 139
    :goto_4
    and-int/lit8 v7, v7, 0x10

    .line 140
    .line 141
    if-eqz v7, :cond_7

    .line 142
    .line 143
    goto :goto_5

    .line 144
    :cond_7
    move v9, v4

    .line 145
    :goto_5
    if-eqz v16, :cond_8

    .line 146
    .line 147
    const/4 v7, 0x2

    .line 148
    goto :goto_6

    .line 149
    :cond_8
    move v7, v4

    .line 150
    :goto_6
    or-int/2addr v7, v8

    .line 151
    if-eqz v17, :cond_9

    .line 152
    .line 153
    const/16 v8, 0x20

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_9
    move v8, v4

    .line 157
    :goto_7
    or-int/2addr v7, v8

    .line 158
    if-eqz v9, :cond_a

    .line 159
    .line 160
    const v8, 0x60004000

    .line 161
    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_a
    move v8, v4

    .line 165
    :goto_8
    or-int/2addr v7, v8

    .line 166
    move v8, v4

    .line 167
    :goto_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v9

    .line 171
    if-ge v8, v9, :cond_2

    .line 172
    .line 173
    move-object/from16 v9, p2

    .line 174
    .line 175
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    move-object/from16 v4, v16

    .line 180
    .line 181
    check-cast v4, Landroid/content/pm/ShortcutInfo;

    .line 182
    .line 183
    move/from16 v16, v3

    .line 184
    .line 185
    if-eqz v15, :cond_b

    .line 186
    .line 187
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    invoke-virtual {v15, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    if-nez v3, :cond_b

    .line 196
    .line 197
    goto :goto_a

    .line 198
    :cond_b
    const-wide/16 v18, 0x0

    .line 199
    .line 200
    cmp-long v3, v11, v18

    .line 201
    .line 202
    if-eqz v3, :cond_c

    .line 203
    .line 204
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    .line 205
    .line 206
    .line 207
    move-result-wide v18

    .line 208
    cmp-long v3, v11, v18

    .line 209
    .line 210
    if-lez v3, :cond_c

    .line 211
    .line 212
    goto :goto_a

    .line 213
    :cond_c
    if-eqz v13, :cond_d

    .line 214
    .line 215
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    invoke-interface {v13, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_d

    .line 224
    .line 225
    goto :goto_a

    .line 226
    :cond_d
    if-eqz v14, :cond_e

    .line 227
    .line 228
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getLocusId()Landroid/content/LocusId;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    invoke-interface {v14, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v3

    .line 236
    if-nez v3, :cond_e

    .line 237
    .line 238
    goto :goto_a

    .line 239
    :cond_e
    if-nez p4, :cond_f

    .line 240
    .line 241
    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getFlags()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    and-int/2addr v3, v7

    .line 246
    if-eqz v3, :cond_10

    .line 247
    .line 248
    :cond_f
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    :cond_10
    :goto_a
    add-int/lit8 v8, v8, 0x1

    .line 252
    .line 253
    move/from16 v3, v16

    .line 254
    .line 255
    const/4 v4, 0x0

    .line 256
    goto :goto_9

    .line 257
    :goto_b
    invoke-static {v10}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    if-nez v3, :cond_12

    .line 262
    .line 263
    if-eqz p4, :cond_11

    .line 264
    .line 265
    :try_start_0
    invoke-interface {v6, v1, v10, v2}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    .line 266
    .line 267
    .line 268
    goto :goto_c

    .line 269
    :cond_11
    invoke-interface {v6, v1, v10, v2}, Landroid/content/pm/IShortcutChangeCallback;->onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .line 271
    .line 272
    :catch_0
    :cond_12
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 273
    .line 274
    move/from16 v3, v16

    .line 275
    .line 276
    const/4 v4, 0x0

    .line 277
    goto/16 :goto_0

    .line 278
    .line 279
    :cond_13
    iget-object v0, v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 282
    .line 283
    .line 284
    return-void
.end method

.method public final onShortcutsAddedOrUpdated(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final onShortcutsRemoved(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$ShortcutChangeHandler;->onShortcutEvent(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
