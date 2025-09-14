.class public final Lcom/android/server/app/GameManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/app/GameManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/app/GameManagerService$3;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/android/server/app/GameManagerService$3;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    move-result-object p1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    .line 13
    move-result v0

    .line 14
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 17
    move-result v1

    .line 18
    if-eq v0, v1, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 25
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 26
    :try_start_1
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 28
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 30
    const/high16 v2, 0x20000

    .line 32
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    .line 35
    move-result-object v1

    .line 36
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    if-eqz v1, :cond_1

    .line 40
    goto/16 :goto_4

    .line 42
    :catch_0
    :cond_1
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 49
    move-result v2

    .line 50
    const v3, 0x1f50b9c2

    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x1

    .line 55
    if-eq v2, v3, :cond_3

    .line 57
    const v3, 0x5c1076e2

    .line 60
    if-eq v2, v3, :cond_2

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_4

    .line 71
    move v1, v4

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_4

    .line 81
    move v1, v5

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    :goto_0
    const/4 v1, -0x1

    .line 84
    :goto_1
    if-eqz v1, :cond_7

    .line 86
    if-eq v1, v5, :cond_5

    .line 88
    goto :goto_4

    .line 89
    :cond_5
    const-string v1, "android.intent.extra.REPLACING"

    .line 91
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 94
    move-result p2

    .line 95
    if-nez p2, :cond_8

    .line 97
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 99
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 101
    monitor-enter p2
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 104
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mConfigs:Landroid/util/ArrayMap;

    .line 106
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 110
    :try_start_4
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 112
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 114
    monitor-enter p2
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 115
    :try_start_5
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 117
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 119
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 131
    iget-object v1, v1, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v1

    .line 141
    check-cast v1, Lcom/android/server/app/GameManagerSettings;

    .line 143
    iget-object v2, v1, Lcom/android/server/app/GameManagerSettings;->mGameModes:Landroid/util/ArrayMap;

    .line 145
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, v1, Lcom/android/server/app/GameManagerSettings;->mConfigOverrides:Landroid/util/ArrayMap;

    .line 150
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    goto :goto_3

    .line 156
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 158
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 160
    const/16 v2, 0x2710

    .line 162
    invoke-virtual {p1, v0, v5, v2, v1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 167
    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 169
    const/4 v1, 0x6

    .line 170
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    .line 173
    monitor-exit p2

    .line 174
    goto :goto_4

    .line 175
    :goto_3
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 176
    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_1

    .line 177
    :catchall_1
    move-exception p0

    .line 178
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 179
    :try_start_8
    throw p0

    .line 180
    :cond_7
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 182
    filled-new-array {p1}, [Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, v0, v5, p1}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(IZ[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_1

    .line 189
    goto :goto_4

    .line 190
    :catch_1
    const-string p0, "GameManagerService"

    .line 192
    const-string p1, "Failed to get package name for new package"

    .line 194
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_8
    :goto_4
    return-void

    .line 198
    :pswitch_0
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_a

    .line 210
    iget-object p1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 212
    iget-object p1, p1, Lcom/android/server/app/GameManagerService;->mLock:Ljava/lang/Object;

    .line 214
    monitor-enter p1

    .line 215
    :try_start_9
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 217
    iget-object p2, p2, Lcom/android/server/app/GameManagerService;->mSettings:Landroid/util/ArrayMap;

    .line 219
    invoke-virtual {p2}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 222
    move-result-object p2

    .line 223
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 226
    move-result-object p2

    .line 227
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 230
    move-result v0

    .line 231
    if-eqz v0, :cond_9

    .line 233
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    move-result-object v0

    .line 237
    check-cast v0, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    move-result-object v0

    .line 243
    check-cast v0, Ljava/lang/Integer;

    .line 245
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 248
    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 251
    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    .line 253
    const/4 v3, 0x0

    .line 254
    const/4 v4, 0x1

    .line 255
    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$3;->this$0:Lcom/android/server/app/GameManagerService;

    .line 260
    const-string v2, "RECEIVE_SHUTDOWN_INDENT"

    .line 262
    const/4 v4, 0x6

    .line 263
    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/android/server/app/GameManagerService;->sendUserMessage(IIILjava/lang/String;)V

    .line 266
    goto :goto_5

    .line 267
    :catchall_2
    move-exception p0

    .line 268
    goto :goto_6

    .line 269
    :cond_9
    monitor-exit p1

    .line 270
    goto :goto_7

    .line 271
    :goto_6
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 272
    throw p0

    .line 273
    :cond_a
    :goto_7
    return-void

    .line 274
    nop

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
