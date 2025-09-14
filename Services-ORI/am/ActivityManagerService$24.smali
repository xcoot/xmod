.class public final Lcom/android/server/am/ActivityManagerService$24;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic val$packageNames:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 30
    .line 31
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    .line 34
    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 39
    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 41
    .line 42
    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    sub-int/2addr v3, v4

    .line 56
    :goto_1
    if-ltz v3, :cond_6

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 63
    .line 64
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 65
    .line 66
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 67
    .line 68
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 69
    .line 70
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 71
    .line 72
    iget-object v6, v6, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 73
    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    invoke-static {v8, v7}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-ltz v6, :cond_2

    .line 82
    .line 83
    const/4 v6, -0x1

    .line 84
    iput v6, v5, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 85
    .line 86
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 87
    .line 88
    if-eqz v6, :cond_3

    .line 89
    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 96
    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v8, "_&_"

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 106
    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 119
    .line 120
    iput v4, v5, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto/16 :goto_6

    .line 125
    .line 126
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 127
    .line 128
    if-nez v6, :cond_4

    .line 129
    .line 130
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 131
    .line 132
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 133
    .line 134
    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 135
    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 139
    .line 140
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 141
    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    sget-boolean v6, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 146
    .line 147
    if-nez v6, :cond_5

    .line 148
    .line 149
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 150
    .line 151
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 152
    .line 153
    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 154
    .line 155
    .line 156
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 166
    .line 167
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 168
    .line 169
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    .line 173
    .line 174
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    .line 178
    .line 179
    if-eqz v2, :cond_7

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_7

    .line 190
    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    .line 197
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 198
    .line 199
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 204
    .line 205
    if-nez v0, :cond_8

    .line 206
    .line 207
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 208
    .line 209
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 210
    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 212
    .line 213
    .line 214
    sput-boolean v1, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 215
    .line 216
    const-string p0, "ActivityManager"

    .line 217
    .line 218
    const-string v0, "ALLOWLIST set in bootupbooster"

    .line 219
    .line 220
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .line 222
    .line 223
    goto :goto_5

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 225
    .line 226
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 232
    .line 233
    if-nez v0, :cond_9

    .line 234
    .line 235
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 236
    .line 237
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 238
    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 240
    .line 241
    .line 242
    sput-boolean v4, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 243
    .line 244
    const-string p0, "ActivityManager"

    .line 245
    .line 246
    const-string v0, "ALLOWLIST clear in bootupbooster"

    .line 247
    .line 248
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    :cond_9
    :goto_5
    return-void

    .line 252
    :goto_6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 254
    .line 255
    .line 256
    throw p0
.end method
