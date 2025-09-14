.class public final Lcom/android/server/notification/ShortcutHelper$1;
.super Landroid/content/pm/LauncherApps$Callback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ShortcutHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ShortcutHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .locals 11

    .line 1
    iget-object p3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    check-cast p3, Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz p3, :cond_3

    .line 18
    .line 19
    new-instance v2, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {p3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/lang/String;

    .line 43
    .line 44
    move v4, v1

    .line 45
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    if-ge v4, v5, :cond_2

    .line 50
    .line 51
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    check-cast v5, Landroid/content/pm/ShortcutInfo;

    .line 56
    .line 57
    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_2
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_0

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 92
    .line 93
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 97
    .line 98
    iget-boolean v4, v3, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 99
    .line 100
    if-eqz v4, :cond_0

    .line 101
    .line 102
    iget-object v3, v3, Lcom/android/server/notification/ShortcutHelper;->mActiveShortcutBubbles:Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_0

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 111
    .line 112
    iget-object v4, v3, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsService:Landroid/content/pm/LauncherApps;

    .line 113
    .line 114
    iget-object v3, v3, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallback:Lcom/android/server/notification/ShortcutHelper$1;

    .line 115
    .line 116
    invoke-virtual {v4, v3}, Landroid/content/pm/LauncherApps;->unregisterCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 120
    .line 121
    iput-boolean v1, v3, Lcom/android/server/notification/ShortcutHelper;->mLauncherAppsCallbackRegistered:Z

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    move p1, v1

    .line 125
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-ge p1, p2, :cond_8

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    check-cast p2, Ljava/lang/String;

    .line 136
    .line 137
    iget-object p3, p0, Lcom/android/server/notification/ShortcutHelper$1;->this$0:Lcom/android/server/notification/ShortcutHelper;

    .line 138
    .line 139
    iget-object p3, p3, Lcom/android/server/notification/ShortcutHelper;->mShortcutListener:Lcom/android/server/notification/NotificationManagerService$3;

    .line 140
    .line 141
    if-eqz p3, :cond_7

    .line 142
    .line 143
    iget-object v2, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 144
    .line 145
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 146
    .line 147
    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v3, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 149
    .line 150
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 151
    .line 152
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 157
    .line 158
    const/4 v4, 0x0

    .line 159
    if-eqz v3, :cond_4

    .line 160
    .line 161
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 162
    .line 163
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    goto :goto_3

    .line 168
    :catchall_0
    move-exception p0

    .line 169
    goto :goto_7

    .line 170
    :cond_4
    move-object v3, v4

    .line 171
    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v2, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 173
    .line 174
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v3, :cond_5

    .line 179
    .line 180
    const/16 v3, 0x64

    .line 181
    .line 182
    if-ne v2, v3, :cond_5

    .line 183
    .line 184
    const/4 v2, 0x1

    .line 185
    move v9, v2

    .line 186
    goto :goto_4

    .line 187
    :cond_5
    move v9, v1

    .line 188
    :goto_4
    iget-object v2, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 189
    .line 190
    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 191
    .line 192
    monitor-enter v3

    .line 193
    :try_start_1
    iget-object v2, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 194
    .line 195
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 196
    .line 197
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    move-object v8, p2

    .line 202
    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    .line 203
    .line 204
    if-eqz v8, :cond_6

    .line 205
    .line 206
    iput-object v4, v8, Lcom/android/server/notification/NotificationRecord;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    .line 207
    .line 208
    iget-object p2, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 209
    .line 210
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    iget v2, p2, Landroid/app/Notification;->flags:I

    .line 215
    .line 216
    or-int/lit8 v2, v2, 0x8

    .line 217
    .line 218
    iput v2, p2, Landroid/app/Notification;->flags:I

    .line 219
    .line 220
    iget-object v6, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 221
    .line 222
    iget-object p2, v6, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 223
    .line 224
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 225
    .line 226
    iget-object v5, v8, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 227
    .line 228
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 237
    .line 238
    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 239
    .line 240
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 241
    .line 242
    .line 243
    new-instance v10, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 244
    .line 245
    invoke-direct {v10, v4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 246
    .line 247
    .line 248
    move-object v5, v2

    .line 249
    invoke-direct/range {v5 .. v10}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .line 254
    .line 255
    goto :goto_5

    .line 256
    :catchall_1
    move-exception p0

    .line 257
    goto :goto_6

    .line 258
    :cond_6
    :goto_5
    monitor-exit v3

    .line 259
    goto :goto_8

    .line 260
    :goto_6
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    throw p0

    .line 262
    :goto_7
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    throw p0

    .line 264
    :cond_7
    :goto_8
    add-int/lit8 p1, p1, 0x1

    .line 265
    .line 266
    goto/16 :goto_2

    .line 267
    .line 268
    :cond_8
    return-void
.end method
