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

    .line 4
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 8
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 10
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 12
    invoke-virtual {v0, v1}, Lcom/android/server/am/BGProtectManager;->addAllowlistList(Z)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 18
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 25
    if-nez v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 29
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 31
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 33
    invoke-virtual {v0}, Lcom/android/server/am/BGProtectManager;->removeAllowlistByBUB()V

    .line 36
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 38
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerProcLock;

    .line 40
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 43
    monitor-enter v0

    .line 44
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 46
    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 48
    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    const/4 v4, 0x1

    .line 55
    sub-int/2addr v3, v4

    .line 56
    :goto_1
    if-ltz v3, :cond_6

    .line 58
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v5

    .line 62
    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 64
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 66
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 68
    iget-object v7, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 70
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 72
    iget-object v6, v6, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    invoke-static {v8, v7}, Lcom/android/server/am/BGProtectManager;->appIsPickedProcess(ILjava/lang/String;)I

    .line 80
    move-result v6

    .line 81
    if-ltz v6, :cond_2

    .line 83
    const/4 v6, -0x1

    .line 84
    iput v6, v5, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 86
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 88
    if-eqz v6, :cond_3

    .line 90
    new-instance v7, Ljava/lang/StringBuilder;

    .line 92
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    iget v8, v5, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 97
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    const-string v8, "_&_"

    .line 102
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 107
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v7

    .line 114
    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_3

    .line 120
    iput v4, v5, Lcom/android/server/am/ProcessRecord;->mIpmLaunchType:I

    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception p0

    .line 124
    goto/16 :goto_6

    .line 126
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 128
    if-nez v6, :cond_4

    .line 130
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 132
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 134
    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 137
    goto :goto_3

    .line 138
    :cond_4
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 140
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 142
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 145
    sget-boolean v6, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 147
    if-nez v6, :cond_5

    .line 149
    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 151
    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 153
    invoke-virtual {v6, v5}, Lcom/android/server/am/DynamicHiddenApp;->resetKillExceptFlag(Lcom/android/server/am/ProcessRecord;)V

    .line 156
    :cond_5
    :goto_3
    add-int/lit8 v3, v3, -0x1

    .line 158
    goto :goto_1

    .line 159
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 163
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 165
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 167
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 169
    iget-object v0, v0, Lcom/android/server/am/DynamicHiddenApp;->mBGProtectManager:Lcom/android/server/am/BGProtectManager;

    .line 171
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 174
    sget-object v0, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    if-eqz v2, :cond_7

    .line 181
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 184
    move-result-object v0

    .line 185
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_7

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 197
    sget-object v3, Lcom/android/server/am/BGProtectManager;->dha_MLexcept_map:Ljava/util/ArrayList;

    .line 199
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    goto :goto_4

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->val$packageNames:Ljava/util/List;

    .line 205
    if-nez v0, :cond_8

    .line 207
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 209
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    sput-boolean v1, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 216
    const-string p0, "ActivityManager"

    .line 218
    const-string v0, "ALLOWLIST set in bootupbooster"

    .line 220
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    goto :goto_5

    .line 224
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 226
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 228
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    sget-boolean v0, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 233
    if-nez v0, :cond_9

    .line 235
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$24;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 237
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mDynamicHiddenApp:Lcom/android/server/am/DynamicHiddenApp;

    .line 239
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    sput-boolean v4, Lcom/android/server/am/BGProtectManager;->allowListCleared:Z

    .line 244
    const-string p0, "ActivityManager"

    .line 246
    const-string v0, "ALLOWLIST clear in bootupbooster"

    .line 248
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 256
    throw p0
.end method
