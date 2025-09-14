.class public final Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;
.super Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final launcherPackage:Ljava/lang/String;

.field public final launcherUserId:I

.field public final shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

.field public final shortcutOriginal:Landroid/content/pm/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/pm/ShortcutInfo;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p4, p7}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 9
    .line 10
    iput p6, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutForLauncher:Landroid/content/pm/ShortcutInfo;

    .line 2
    .line 3
    return-object p0
.end method

.method public final tryAccept()Z
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v2, "Unable to pin shortcut: "

    .line 9
    .line 10
    iget-object v3, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->shortcutOriginal:Landroid/content/pm/ShortcutInfo;

    .line 11
    .line 12
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget v6, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 21
    .line 22
    iget-object v7, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherPackage:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v15

    .line 28
    iget-object v14, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mLock:Ljava/lang/Object;

    .line 29
    .line 30
    monitor-enter v14

    .line 31
    :try_start_0
    iget-object v8, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 32
    .line 33
    invoke-virtual {v8, v4}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    const/4 v13, 0x0

    .line 38
    if-eqz v8, :cond_0

    .line 39
    .line 40
    iget-object v8, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 41
    .line 42
    iget v0, v0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinShortcutRequestInner;->launcherUserId:I

    .line 43
    .line 44
    invoke-virtual {v8, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    :cond_0
    move v3, v13

    .line 51
    move-object v4, v14

    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    iget-object v0, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 55
    .line 56
    invoke-virtual {v0, v4, v6, v7}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(IILjava/lang/String;)Lcom/android/server/pm/ShortcutLauncher;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/server/pm/ShortcutPackageItem;->attemptToRestoreIfNeededAndSave()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Lcom/android/server/pm/ShortcutLauncher;->hasPinned(Landroid/content/pm/ShortcutInfo;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    const/4 v7, 0x1

    .line 68
    if-eqz v6, :cond_2

    .line 69
    .line 70
    monitor-exit v14

    .line 71
    :goto_0
    move v13, v7

    .line 72
    goto/16 :goto_7

    .line 73
    .line 74
    :catchall_0
    move-exception v0

    .line 75
    move-object v4, v14

    .line 76
    goto/16 :goto_8

    .line 77
    .line 78
    :cond_2
    iget-object v6, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 79
    .line 80
    invoke-virtual {v6, v4, v5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsForPublisherLocked(ILjava/lang/String;)Lcom/android/server/pm/ShortcutPackage;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    invoke-virtual {v6, v15}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    if-nez v8, :cond_3

    .line 89
    .line 90
    :try_start_1
    iget-object v9, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 91
    .line 92
    invoke-virtual {v9, v3, v13, v7}, Lcom/android/server/pm/ShortcutService;->fixUpIncomingShortcutInfo(Landroid/content/pm/ShortcutInfo;ZZ)V

    .line 93
    .line 94
    .line 95
    goto :goto_2

    .line 96
    :goto_1
    move v3, v13

    .line 97
    move-object v4, v14

    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :catch_0
    move-exception v0

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v8}, Landroid/content/pm/ShortcutInfo;->isEnabled()Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    new-instance v10, Ljava/lang/StringBuilder;

    .line 107
    .line 108
    const-string v11, "Shortcut ID="

    .line 109
    .line 110
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v11, " already exists but disabled."

    .line 117
    .line 118
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v10

    .line 125
    invoke-static {v9, v10}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    :goto_2
    if-nez v8, :cond_5

    .line 129
    .line 130
    :try_start_2
    invoke-virtual {v3}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-nez v2, :cond_4

    .line 135
    .line 136
    iget-object v2, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    .line 140
    .line 141
    new-instance v2, Landroid/content/ComponentName;

    .line 142
    .line 143
    const-string v9, "android.__dummy__"

    .line 144
    .line 145
    invoke-direct {v2, v5, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v2}, Landroid/content/pm/ShortcutInfo;->setActivity(Landroid/content/ComponentName;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    invoke-virtual {v6, v3}, Lcom/android/server/pm/ShortcutPackage;->addOrReplaceDynamicShortcut(Landroid/content/pm/ShortcutInfo;)V

    .line 152
    .line 153
    .line 154
    :cond_5
    invoke-virtual {v0, v4, v5, v15}, Lcom/android/server/pm/ShortcutLauncher;->addPinnedShortcut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    .line 156
    .line 157
    if-nez v8, :cond_6

    .line 158
    .line 159
    const/4 v10, 0x0

    .line 160
    const/4 v11, 0x0

    .line 161
    const/4 v0, 0x0

    .line 162
    move-object v8, v6

    .line 163
    move-object v9, v15

    .line 164
    move v12, v13

    .line 165
    move v3, v13

    .line 166
    move v13, v0

    .line 167
    move-object v4, v14

    .line 168
    move v14, v3

    .line 169
    :try_start_3
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/pm/ShortcutPackage;->deleteOrDisableWithId(Ljava/lang/String;ZZZIZ)Landroid/content/pm/ShortcutInfo;

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_6
    move-object v4, v14

    .line 174
    :goto_3
    invoke-virtual {v6}, Lcom/android/server/pm/ShortcutPackage;->adjustRanks()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v15}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    iget-object v2, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 187
    .line 188
    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->verifyStates()V

    .line 189
    .line 190
    .line 191
    iget-object v1, v1, Lcom/android/server/pm/ShortcutRequestPinProcessor;->mService:Lcom/android/server/pm/ShortcutService;

    .line 192
    .line 193
    const/4 v2, 0x0

    .line 194
    invoke-virtual {v1, v6, v0, v2}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Lcom/android/server/pm/ShortcutPackage;Ljava/util/List;Ljava/util/List;)V

    .line 195
    .line 196
    .line 197
    goto :goto_0

    .line 198
    :catchall_1
    move-exception v0

    .line 199
    goto :goto_8

    .line 200
    :goto_4
    :try_start_4
    const-string v1, "ShortcutService"

    .line 201
    .line 202
    new-instance v5, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .line 220
    .line 221
    monitor-exit v4

    .line 222
    :goto_5
    move v13, v3

    .line 223
    goto :goto_7

    .line 224
    :goto_6
    const-string v0, "ShortcutService"

    .line 225
    .line 226
    const-string v1, "User is locked now."

    .line 227
    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    monitor-exit v4

    .line 232
    goto :goto_5

    .line 233
    :goto_7
    return v13

    .line 234
    :goto_8
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    throw v0
.end method
