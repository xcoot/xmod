.class public final synthetic Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BroadcastHelper;

.field public final synthetic f$1:[I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BroadcastHelper;[ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$1:[I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$3:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/pm/BroadcastHelper;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$1:[I

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    .line 8
    .line 9
    iget-boolean v0, v0, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda2;->f$3:Z

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    array-length v4, v2

    .line 15
    const/4 v5, 0x0

    .line 16
    :goto_0
    if-ge v5, v4, :cond_5

    .line 17
    .line 18
    aget v15, v2, v5

    .line 19
    .line 20
    iget-object v6, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 21
    .line 22
    invoke-virtual {v6, v15}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserRunning(I)Z

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_4

    .line 27
    .line 28
    iget-object v6, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 29
    .line 30
    iget-object v7, v6, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 31
    .line 32
    iget-object v7, v7, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 33
    .line 34
    monitor-enter v7

    .line 35
    :try_start_0
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 36
    .line 37
    iget-object v6, v6, Lcom/android/server/pm/UserManagerService;->mUserStates:Lcom/android/server/pm/UserManagerService$WatchedUserStates;

    .line 38
    .line 39
    invoke-virtual {v6, v15}, Lcom/android/server/pm/UserManagerService$WatchedUserStates;->get(I)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez v6, :cond_0

    .line 45
    .line 46
    goto/16 :goto_5

    .line 47
    .line 48
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    .line 49
    .line 50
    .line 51
    move-result-object v23

    .line 52
    :try_start_1
    new-instance v6, Landroid/content/Intent;

    .line 53
    .line 54
    const-string v7, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 55
    .line 56
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    const-string v6, "android.intent.extra.user_handle"

    .line 64
    .line 65
    invoke-virtual {v9, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/16 v6, 0x20

    .line 69
    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    invoke-virtual {v9, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    goto/16 :goto_4

    .line 78
    .line 79
    :cond_1
    :goto_1
    const-string v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 80
    .line 81
    filled-new-array {v7}, [Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v24

    .line 85
    iget-object v7, v1, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 86
    .line 87
    if-eqz v7, :cond_2

    .line 88
    .line 89
    invoke-virtual {v7}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    .line 90
    .line 91
    .line 92
    move-result-wide v7

    .line 93
    :goto_2
    move-wide/from16 v17, v7

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    const-wide/16 v7, 0x2710

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_3
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    .line 100
    .line 101
    .line 102
    move-result-object v25

    .line 103
    const-string v21, ""

    .line 104
    .line 105
    const/16 v20, 0xca

    .line 106
    .line 107
    const/16 v19, 0x0

    .line 108
    .line 109
    move-object/from16 v16, v25

    .line 110
    .line 111
    invoke-virtual/range {v16 .. v21}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual/range {v25 .. v25}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    move-result-object v19

    .line 118
    const/4 v10, 0x0

    .line 119
    const/4 v11, 0x0

    .line 120
    const/4 v12, 0x0

    .line 121
    const/4 v13, 0x0

    .line 122
    const/4 v14, 0x0

    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const/16 v17, 0x0

    .line 126
    .line 127
    const/16 v18, -0x1

    .line 128
    .line 129
    const/16 v20, 0x0

    .line 130
    .line 131
    const/16 v21, 0x0

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    const/4 v8, 0x0

    .line 135
    move-object/from16 v6, v23

    .line 136
    .line 137
    move/from16 p0, v15

    .line 138
    .line 139
    move-object/from16 v15, v24

    .line 140
    .line 141
    move/from16 v22, p0

    .line 142
    .line 143
    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 144
    .line 145
    .line 146
    iget-object v6, v1, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerService$LocalService;

    .line 147
    .line 148
    move/from16 v15, p0

    .line 149
    .line 150
    invoke-virtual {v6, v15}, Lcom/android/server/pm/UserManagerService$LocalService;->isUserUnlockingOrUnlocked(I)Z

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-eqz v6, :cond_4

    .line 155
    .line 156
    new-instance v6, Landroid/content/Intent;

    .line 157
    .line 158
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 159
    .line 160
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    .line 165
    .line 166
    move-result-object v9

    .line 167
    const-string v6, "android.intent.extra.user_handle"

    .line 168
    .line 169
    invoke-virtual {v9, v6, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    .line 171
    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    const/16 v6, 0x20

    .line 175
    .line 176
    invoke-virtual {v9, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 177
    .line 178
    .line 179
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    .line 180
    .line 181
    .line 182
    move-result-object v19

    .line 183
    const/4 v10, 0x0

    .line 184
    const/4 v11, 0x0

    .line 185
    const/4 v12, 0x0

    .line 186
    const/4 v13, 0x0

    .line 187
    const/4 v14, 0x0

    .line 188
    const/16 v16, 0x0

    .line 189
    .line 190
    const/16 v17, 0x0

    .line 191
    .line 192
    const/16 v18, -0x1

    .line 193
    .line 194
    const/16 v20, 0x0

    .line 195
    .line 196
    const/16 v21, 0x0

    .line 197
    .line 198
    const/4 v7, 0x0

    .line 199
    const/4 v8, 0x0

    .line 200
    move-object/from16 v6, v23

    .line 201
    .line 202
    move/from16 v22, v15

    .line 203
    .line 204
    move-object/from16 v15, v24

    .line 205
    .line 206
    invoke-interface/range {v6 .. v22}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    throw v0

    .line 215
    :catchall_0
    move-exception v0

    .line 216
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 217
    throw v0

    .line 218
    :cond_4
    :goto_5
    add-int/lit8 v5, v5, 0x1

    .line 219
    .line 220
    goto/16 :goto_0

    .line 221
    .line 222
    :cond_5
    return-void
.end method
