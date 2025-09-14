.class public final Lcom/android/server/notification/NotificationManagerService$3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/notification/NotificationDelegate;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public clearEffects()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const-string v1, "NotificationService"

    .line 11
    .line 12
    const-string v2, "clearEffects"

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 21
    .line 22
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearSoundLocked()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->clearVibrateLocked()V

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/android/server/notification/NotificationAttentionHelper;->mLights:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationAttentionHelper;->updateLightsLocked()V

    .line 36
    .line 37
    .line 38
    monitor-exit v0

    .line 39
    return-void

    .line 40
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    throw p0
.end method

.method public clearInlineReplyUriPermissions(Ljava/lang/String;)V
    .locals 8

    .line 1
    const-string v0, "INLINE_REPLY: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Lcom/android/server/notification/InlineReplyUriRecord;

    .line 17
    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 21
    .line 22
    iget-object v4, v2, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    .line 23
    .line 24
    iget-object v5, v2, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    .line 25
    .line 26
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, -0x1

    .line 35
    if-eqz v6, :cond_0

    .line 36
    .line 37
    if-ne v5, v7, :cond_0

    .line 38
    .line 39
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    if-ne v5, v7, :cond_1

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, v2, Lcom/android/server/notification/InlineReplyUriRecord;->mKey:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v3, v5, v4, v0}, Lcom/android/server/notification/NotificationManagerService;->destroyPermissionOwner(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 65
    .line 66
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    monitor-exit v1

    .line 75
    return-void

    .line 76
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    throw p0
.end method

.method public getNotificationByKey(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object p0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0
.end method

.method public grantInlineReplyUriPermission(Ljava/lang/String;Landroid/net/Uri;Landroid/os/UserHandle;Ljava/lang/String;I)V
    .locals 10

    .line 1
    const-string v0, "Cannot grant uri permission to unknown UID: "

    .line 2
    .line 3
    const-string v1, "INLINE_REPLY:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 13
    .line 14
    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/server/notification/InlineReplyUriRecord;

    .line 19
    .line 20
    if-nez v3, :cond_0

    .line 21
    .line 22
    new-instance v3, Lcom/android/server/notification/InlineReplyUriRecord;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 25
    .line 26
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 27
    .line 28
    new-instance v5, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v4, Lcom/android/server/uri/UriGrantsManagerService$LocalService;

    .line 41
    .line 42
    invoke-virtual {v4, v1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-direct {v3, v1, p3, p4, p1}, Lcom/android/server/notification/InlineReplyUriRecord;-><init>(Landroid/os/IBinder;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 50
    .line 51
    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mInlineReplyRecordsByKey:Landroid/util/ArrayMap;

    .line 52
    .line 53
    invoke-virtual {p3, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catchall_0
    move-exception p0

    .line 58
    goto :goto_5

    .line 59
    :cond_0
    :goto_0
    iget-object v5, v3, Lcom/android/server/notification/InlineReplyUriRecord;->mPermissionOwner:Landroid/os/IBinder;

    .line 60
    .line 61
    iget-object p1, v3, Lcom/android/server/notification/InlineReplyUriRecord;->mUser:Landroid/os/UserHandle;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 68
    .line 69
    .line 70
    move-result p3

    .line 71
    const/4 p4, 0x0

    .line 72
    const/4 v1, -0x1

    .line 73
    if-eqz p3, :cond_2

    .line 74
    .line 75
    if-ne p1, v1, :cond_2

    .line 76
    .line 77
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    :cond_1
    move v9, p1

    .line 82
    goto :goto_1

    .line 83
    :cond_2
    if-ne p1, v1, :cond_1

    .line 84
    .line 85
    move v9, p4

    .line 86
    :goto_1
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    .line 87
    .line 88
    .line 89
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    if-eq p1, v9, :cond_4

    .line 91
    .line 92
    :try_start_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 93
    .line 94
    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 95
    .line 96
    invoke-interface {p1, p5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_3

    .line 101
    .line 102
    const-string p1, "NotificationService"

    .line 103
    .line 104
    new-instance p3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :catch_0
    move-exception p1

    .line 121
    goto :goto_3

    .line 122
    :cond_3
    aget-object p1, p1, p4

    .line 123
    .line 124
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 125
    .line 126
    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 127
    .line 128
    const-wide/16 v0, 0x0

    .line 129
    .line 130
    invoke-interface {p3, p1, v0, v1, v9}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 131
    .line 132
    .line 133
    move-result p5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    :cond_4
    :goto_2
    move v7, p5

    .line 135
    goto :goto_4

    .line 136
    :goto_3
    :try_start_2
    const-string p3, "NotificationService"

    .line 137
    .line 138
    const-string p4, "Cannot talk to package manager"

    .line 139
    .line 140
    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :goto_4
    iget-object p1, v3, Lcom/android/server/notification/InlineReplyUriRecord;->mUris:Landroid/util/ArraySet;

    .line 145
    .line 146
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 150
    .line 151
    iget-object v8, v3, Lcom/android/server/notification/InlineReplyUriRecord;->mPackageName:Ljava/lang/String;

    .line 152
    .line 153
    move-object v6, p2

    .line 154
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/notification/NotificationManagerService;->grantUriPermission(Landroid/os/IBinder;Landroid/net/Uri;ILjava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    monitor-exit v2

    .line 158
    return-void

    .line 159
    :goto_5
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 160
    throw p0
.end method

.method public isActivityStartAllowed(ILjava/lang/String;Ljava/util/Collection;)Z
    .locals 4

    .line 1
    check-cast p3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Landroid/os/IBinder;

    .line 27
    .line 28
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->ALLOWLIST_TOKEN:Landroid/os/IBinder;

    .line 29
    .line 30
    if-eq v0, v2, :cond_0

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    const-string p3, "Indirect notification activity start (trampoline) from "

    .line 34
    .line 35
    invoke-static {p3, p2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 42
    .line 43
    if-eqz p3, :cond_2

    .line 44
    .line 45
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 46
    .line 47
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRoleObserver:Lcom/android/server/notification/NotificationManagerService$RoleObserver;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->isUidExemptFromTrampolineRestrictions(I)Z

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    if-eqz p0, :cond_2

    .line 54
    .line 55
    const-wide/32 v2, 0xd933952

    .line 56
    .line 57
    .line 58
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    const-wide/32 v2, 0x9fe8a20

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v3, p1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    :goto_0
    const-string p1, "NotificationService"

    .line 71
    .line 72
    if-eqz p0, :cond_3

    .line 73
    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p2, " blocked"

    .line 83
    .line 84
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    const/4 p0, 0x0

    .line 95
    return p0

    .line 96
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string p2, ", this should be avoided for performance reasons"

    .line 105
    .line 106
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    return v1
.end method

.method public onBubbleMetadataFlagChanged(Ljava/lang/String;I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    move-object v5, v1

    .line 15
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 16
    .line 17
    if-eqz v5, :cond_3

    .line 18
    .line 19
    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eq p2, v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v1}, Landroid/app/Notification$BubbleMetadata;->getFlags()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    xor-int/2addr v2, p2

    .line 46
    and-int/lit8 v2, v2, 0x2

    .line 47
    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 51
    .line 52
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAttentionHelper:Lcom/android/server/notification/NotificationAttentionHelper;

    .line 53
    .line 54
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationAttentionHelper;->clearEffectsLocked(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-virtual {v1, p2}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    iget p2, p1, Landroid/app/Notification;->flags:I

    .line 67
    .line 68
    or-int/lit8 p2, p2, 0x8

    .line 69
    .line 70
    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 71
    .line 72
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 73
    .line 74
    iget-object p1, v3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 75
    .line 76
    new-instance p2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 77
    .line 78
    iget-object v1, v5, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    .line 80
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    .line 94
    .line 95
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-direct {v7, v1}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 99
    .line 100
    .line 101
    const/4 v6, 0x1

    .line 102
    move-object v2, p2

    .line 103
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    .line 108
    .line 109
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 110
    .line 111
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService;->mSmartAlertController:Lcom/android/server/notification/SmartAlertController;

    .line 112
    .line 113
    if-eqz p1, :cond_3

    .line 114
    .line 115
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 116
    .line 117
    iget-object p2, p1, Lcom/android/server/notification/SmartAlertController;->mHandler:Landroid/os/Handler;

    .line 118
    .line 119
    new-instance v1, Lcom/android/server/notification/SmartAlertController$2;

    .line 120
    .line 121
    invoke-direct {v1, p1, p0}, Lcom/android/server/notification/SmartAlertController$2;-><init>(Lcom/android/server/notification/SmartAlertController;Ljava/util/ArrayList;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    .line 126
    .line 127
    :cond_3
    monitor-exit v0

    .line 128
    return-void

    .line 129
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    throw p0
.end method

.method public onClearAll(IIIZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const v4, 0xb792f1

    .line 21
    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 30
    .line 31
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-ne v5, v4, :cond_0

    .line 38
    .line 39
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    const-string v5, "com.android.systemui"

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    if-eqz p4, :cond_1

    .line 54
    .line 55
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 62
    .line 63
    or-int/lit16 v4, v4, 0x2000

    .line 64
    .line 65
    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    goto/16 :goto_2

    .line 70
    .line 71
    :cond_1
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    iget v4, v3, Landroid/app/Notification;->flags:I

    .line 78
    .line 79
    and-int/lit16 v4, v4, -0x2001

    .line 80
    .line 81
    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_5

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 103
    .line 104
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 105
    .line 106
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    if-ne v5, v4, :cond_3

    .line 111
    .line 112
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 113
    .line 114
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const-string v6, "com.android.systemui"

    .line 119
    .line 120
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    if-eqz v5, :cond_3

    .line 125
    .line 126
    if-eqz p4, :cond_4

    .line 127
    .line 128
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    iget v5, v3, Landroid/app/Notification;->flags:I

    .line 135
    .line 136
    or-int/lit16 v5, v5, 0x2000

    .line 137
    .line 138
    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    iget v5, v3, Landroid/app/Notification;->flags:I

    .line 148
    .line 149
    and-int/lit16 v5, v5, -0x2001

    .line 150
    .line 151
    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_5
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 155
    .line 156
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 160
    .line 161
    .line 162
    move-result-wide v15

    .line 163
    iget-object v0, v7, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 164
    .line 165
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$25;

    .line 166
    .line 167
    const/4 v14, 0x1

    .line 168
    const/16 v13, 0x2000

    .line 169
    .line 170
    const/4 v12, 0x3

    .line 171
    const/4 v8, 0x0

    .line 172
    move-object v6, v2

    .line 173
    move/from16 v9, p1

    .line 174
    .line 175
    move/from16 v10, p2

    .line 176
    .line 177
    move/from16 v11, p3

    .line 178
    .line 179
    invoke-direct/range {v6 .. v16}, Lcom/android/server/notification/NotificationManagerService$25;-><init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    .line 184
    .line 185
    monitor-exit v1

    .line 186
    return-void

    .line 187
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    throw v0
.end method

.method public onNotificationActionClick(IILjava/lang/String;ILandroid/app/Notification$Action;Lcom/android/internal/statusbar/NotificationVisibility;Z)V
    .locals 31

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v10, p5

    .line 8
    .line 9
    move-object/from16 v11, p6

    .line 10
    .line 11
    const-string v3, "No notification with key: "

    .line 12
    .line 13
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14
    .line 15
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    .line 16
    .line 17
    if-eqz v4, :cond_0

    .line 18
    .line 19
    const-string/jumbo v5, "notification interaction"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v5}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 26
    .line 27
    iget-object v12, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v12

    .line 30
    :try_start_0
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 31
    .line 32
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 33
    .line 34
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v13, v4

    .line 39
    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    .line 40
    .line 41
    if-nez v13, :cond_1

    .line 42
    .line 43
    const-string v0, "NotificationService"

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    monitor-exit v12

    .line 61
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto/16 :goto_2

    .line 64
    .line 65
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 66
    .line 67
    .line 68
    move-result-wide v3

    .line 69
    invoke-virtual {v13, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getLogMaker(J)Landroid/metrics/LogMaker;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    const/16 v6, 0x81

    .line 74
    .line 75
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    const/4 v6, 0x4

    .line 80
    invoke-virtual {v5, v6}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-virtual {v5, v2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    iget v6, v11, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 89
    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const/16 v7, 0x31e

    .line 95
    .line 96
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget v6, v11, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 101
    .line 102
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const/16 v7, 0x573

    .line 107
    .line 108
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    const/16 v7, 0x641

    .line 121
    .line 122
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    const/16 v7, 0x640

    .line 131
    .line 132
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    iget-object v6, v11, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 137
    .line 138
    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    const/16 v7, 0x65d

    .line 147
    .line 148
    invoke-virtual {v5, v7, v6}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    invoke-static {v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 153
    .line 154
    .line 155
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 156
    .line 157
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 158
    .line 159
    invoke-virtual/range {p5 .. p5}, Landroid/app/Notification$Action;->isContextual()Z

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    sget-object v7, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 164
    .line 165
    if-ltz v2, :cond_5

    .line 166
    .line 167
    const/4 v7, 0x2

    .line 168
    if-le v2, v7, :cond_2

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_2
    if-eqz p7, :cond_3

    .line 172
    .line 173
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    const/16 v7, 0x13

    .line 178
    .line 179
    add-int/2addr v7, v2

    .line 180
    aget-object v6, v6, v7

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_3
    if-eqz v6, :cond_4

    .line 184
    .line 185
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    const/16 v7, 0x10

    .line 190
    .line 191
    add-int/2addr v7, v2

    .line 192
    aget-object v6, v6, v7

    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_4
    invoke-static {}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->values()[Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    const/16 v7, 0xd

    .line 200
    .line 201
    add-int/2addr v7, v2

    .line 202
    aget-object v6, v6, v7

    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_5
    :goto_0
    sget-object v6, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_ACTION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 206
    .line 207
    :goto_1
    check-cast v5, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 208
    .line 209
    invoke-virtual {v5, v6, v13}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 210
    .line 211
    .line 212
    iget-object v5, v10, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 213
    .line 214
    invoke-virtual {v5}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    .line 215
    .line 216
    .line 217
    move-result-object v5

    .line 218
    invoke-interface {v5}, Landroid/content/IIntentSender;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    iget-object v6, v10, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 223
    .line 224
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v6}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    iget-wide v7, v13, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 233
    .line 234
    sub-long v7, v3, v7

    .line 235
    .line 236
    long-to-int v7, v7

    .line 237
    iget-wide v8, v13, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 238
    .line 239
    sub-long v8, v3, v8

    .line 240
    .line 241
    long-to-int v8, v8

    .line 242
    invoke-virtual {v13, v3, v4}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    iget v4, v11, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 247
    .line 248
    iget v9, v11, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 249
    .line 250
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 251
    .line 252
    .line 253
    move-result-object v14

    .line 254
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 263
    .line 264
    .line 265
    move-result-object v15

    .line 266
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 267
    .line 268
    .line 269
    move-result-object v16

    .line 270
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    .line 272
    .line 273
    move-result-object v9

    .line 274
    move-object/from16 v1, p3

    .line 275
    .line 276
    move-object v2, v5

    .line 277
    move-object v3, v6

    .line 278
    move-object v4, v14

    .line 279
    move-object v5, v7

    .line 280
    move-object v6, v8

    .line 281
    move-object v7, v15

    .line 282
    move-object/from16 v8, v16

    .line 283
    .line 284
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    const/16 v2, 0x6b81

    .line 289
    .line 290
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 291
    .line 292
    .line 293
    invoke-virtual/range {p6 .. p6}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 297
    .line 298
    invoke-virtual {v1, v13}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 299
    .line 300
    .line 301
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 302
    .line 303
    iget-object v7, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 304
    .line 305
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 306
    .line 307
    .line 308
    iget-object v1, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 309
    .line 310
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v3

    .line 314
    iget-object v8, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 315
    .line 316
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 317
    .line 318
    .line 319
    move-result v9

    .line 320
    new-instance v11, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;

    .line 321
    .line 322
    const/4 v6, 0x1

    .line 323
    move-object v1, v11

    .line 324
    move-object v2, v7

    .line 325
    move-object/from16 v4, p5

    .line 326
    .line 327
    move/from16 v5, p7

    .line 328
    .line 329
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/Object;ZI)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v8, v9, v11}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-eqz v1, :cond_6

    .line 340
    .line 341
    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 342
    .line 343
    iget-object v0, v15, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 344
    .line 345
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 346
    .line 347
    iget-object v2, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 348
    .line 349
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v18

    .line 353
    iget-object v2, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 354
    .line 355
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v19

    .line 359
    iget-object v2, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 360
    .line 361
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 362
    .line 363
    .line 364
    move-result v20

    .line 365
    iget-object v2, v13, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 366
    .line 367
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 368
    .line 369
    .line 370
    move-result v24

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 372
    .line 373
    .line 374
    move-result-wide v29

    .line 375
    const/16 v27, -0x1

    .line 376
    .line 377
    const/16 v28, 0x0

    .line 378
    .line 379
    const/high16 v21, 0x10000

    .line 380
    .line 381
    const/16 v22, 0x2000

    .line 382
    .line 383
    const/16 v23, 0x0

    .line 384
    .line 385
    const/16 v25, 0x1

    .line 386
    .line 387
    const/16 v26, -0x1

    .line 388
    .line 389
    move-object v14, v1

    .line 390
    move/from16 v16, p1

    .line 391
    .line 392
    move/from16 v17, p2

    .line 393
    .line 394
    invoke-direct/range {v14 .. v30}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    .line 395
    .line 396
    .line 397
    const/16 v2, 0xc8

    .line 398
    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V

    .line 400
    .line 401
    .line 402
    :cond_6
    monitor-exit v12

    .line 403
    return-void

    .line 404
    :goto_2
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    throw v0
.end method

.method public onNotificationBubbleChanged(Ljava/lang/String;ZI)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    move-object v4, p1

    .line 15
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 16
    .line 17
    if-eqz v4, :cond_2

    .line 18
    .line 19
    if-nez p2, :cond_0

    .line 20
    .line 21
    iget-object p0, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    iget p1, p0, Landroid/app/Notification;->flags:I

    .line 28
    .line 29
    and-int/lit16 p1, p1, -0x1001

    .line 30
    .line 31
    iput p1, p0, Landroid/app/Notification;->flags:I

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    iput-boolean p0, v4, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    iget-object p1, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iget p2, p1, Landroid/app/Notification;->flags:I

    .line 46
    .line 47
    or-int/lit8 p2, p2, 0x8

    .line 48
    .line 49
    iput p2, p1, Landroid/app/Notification;->flags:I

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, v4, Lcom/android/server/notification/NotificationRecord;->mFlagBubbleRemoved:Z

    .line 53
    .line 54
    iget-object p1, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    iget-object p1, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1, p3}, Landroid/app/Notification$BubbleMetadata;->setFlags(I)V

    .line 77
    .line 78
    .line 79
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 80
    .line 81
    iget-object p1, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 82
    .line 83
    new-instance p2, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 84
    .line 85
    iget-object p3, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 86
    .line 87
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 96
    .line 97
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPostNotificationTrackerFactory:Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    .line 103
    .line 104
    const/4 p0, 0x0

    .line 105
    invoke-direct {v6, p0}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 106
    .line 107
    .line 108
    const/4 v5, 0x1

    .line 109
    move-object v1, p2

    .line 110
    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 114
    .line 115
    .line 116
    :cond_2
    :goto_0
    monitor-exit v0

    .line 117
    return-void

    .line 118
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    throw p0
.end method

.method public onNotificationClear(IILjava/lang/String;ILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p8

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :try_start_0
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 11
    .line 12
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 13
    .line 14
    move-object/from16 v4, p5

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 26
    .line 27
    move/from16 v6, p6

    .line 28
    .line 29
    invoke-virtual {v5, v6}, Landroid/service/notification/NotificationStats;->setDismissalSurface(I)V

    .line 30
    .line 31
    .line 32
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 33
    .line 34
    move/from16 v6, p7

    .line 35
    .line 36
    invoke-virtual {v5, v6}, Landroid/service/notification/NotificationStats;->setDismissalSentiment(I)V

    .line 37
    .line 38
    .line 39
    iget-object v5, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 40
    .line 41
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    iget-object v3, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 46
    .line 47
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    move v12, v3

    .line 52
    :goto_0
    move-object v11, v5

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception v0

    .line 55
    goto :goto_2

    .line 56
    :cond_0
    const/4 v5, 0x0

    .line 57
    move v12, v4

    .line 58
    goto :goto_0

    .line 59
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 61
    .line 62
    iget v0, v1, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 63
    .line 64
    iget v2, v1, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 65
    .line 66
    iget-object v3, v7, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 67
    .line 68
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 69
    .line 70
    move-object v6, v5

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 72
    .line 73
    .line 74
    move-result-wide v21

    .line 75
    const/4 v13, 0x0

    .line 76
    const/16 v14, 0x2000

    .line 77
    .line 78
    const/4 v15, 0x1

    .line 79
    const/16 v17, 0x2

    .line 80
    .line 81
    const/16 v20, 0x0

    .line 82
    .line 83
    move/from16 v8, p1

    .line 84
    .line 85
    move/from16 v9, p2

    .line 86
    .line 87
    move-object/from16 v10, p3

    .line 88
    .line 89
    move/from16 v16, p4

    .line 90
    .line 91
    move/from16 v18, v0

    .line 92
    .line 93
    move/from16 v19, v2

    .line 94
    .line 95
    invoke-direct/range {v6 .. v22}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, v5, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p8 .. p8}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :goto_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    throw v0
.end method

.method public onNotificationClick(IILjava/lang/String;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p3

    .line 4
    .line 5
    move-object/from16 v8, p4

    .line 6
    .line 7
    const-string v1, "No notification with key: "

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string/jumbo v3, "notification interaction"

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 22
    .line 23
    iget-object v9, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 24
    .line 25
    monitor-enter v9

    .line 26
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 29
    .line 30
    invoke-virtual {v2, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v10, v2

    .line 35
    check-cast v10, Lcom/android/server/notification/NotificationRecord;

    .line 36
    .line 37
    if-nez v10, :cond_1

    .line 38
    .line 39
    const-string v0, "NotificationService"

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    monitor-exit v9

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    const/16 v4, 0x80

    .line 70
    .line 71
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x4

    .line 76
    invoke-virtual {v3, v4}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget v4, v8, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 81
    .line 82
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    const/16 v5, 0x31e

    .line 87
    .line 88
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    iget v4, v8, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 93
    .line 94
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    const/16 v5, 0x573

    .line 99
    .line 100
    invoke-virtual {v3, v5, v4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 105
    .line 106
    .line 107
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 108
    .line 109
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 110
    .line 111
    sget-object v4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_CLICKED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 112
    .line 113
    check-cast v3, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 114
    .line 115
    invoke-virtual {v3, v4, v10}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 116
    .line 117
    .line 118
    iget-wide v3, v10, Lcom/android/server/notification/NotificationRecord;->mCreationTimeMs:J

    .line 119
    .line 120
    sub-long v3, v1, v3

    .line 121
    .line 122
    long-to-int v3, v3

    .line 123
    iget-wide v4, v10, Lcom/android/server/notification/NotificationRecord;->mUpdateTimeMs:J

    .line 124
    .line 125
    sub-long v4, v1, v4

    .line 126
    .line 127
    long-to-int v4, v4

    .line 128
    invoke-virtual {v10, v1, v2}, Lcom/android/server/notification/NotificationRecord;->getExposureMs(J)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget v2, v8, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 133
    .line 134
    iget v5, v8, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 135
    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v4

    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    move-object/from16 v1, p3

    .line 157
    .line 158
    move-object v2, v3

    .line 159
    move-object v3, v4

    .line 160
    move-object v4, v6

    .line 161
    move-object v5, v11

    .line 162
    move-object v6, v12

    .line 163
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    const/16 v2, 0x6b80

    .line 168
    .line 169
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 170
    .line 171
    .line 172
    iget-object v1, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 173
    .line 174
    iget-object v12, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 175
    .line 176
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v15

    .line 180
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v16

    .line 184
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    .line 185
    .line 186
    .line 187
    move-result v17

    .line 188
    iget-object v2, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 189
    .line 190
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    .line 191
    .line 192
    .line 193
    move-result v21

    .line 194
    iget v2, v8, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 195
    .line 196
    iget v3, v8, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 197
    .line 198
    iget-object v4, v12, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 199
    .line 200
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 201
    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 203
    .line 204
    .line 205
    move-result-wide v26

    .line 206
    const/16 v25, 0x0

    .line 207
    .line 208
    const/16 v18, 0x10

    .line 209
    .line 210
    const v19, 0x9040

    .line 211
    .line 212
    .line 213
    const/16 v20, 0x0

    .line 214
    .line 215
    const/16 v22, 0x1

    .line 216
    .line 217
    move-object v11, v5

    .line 218
    move/from16 v13, p1

    .line 219
    .line 220
    move/from16 v14, p2

    .line 221
    .line 222
    move/from16 v23, v2

    .line 223
    .line 224
    move/from16 v24, v3

    .line 225
    .line 226
    invoke-direct/range {v11 .. v27}, Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;Ljava/lang/String;IIIZIIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;J)V

    .line 227
    .line 228
    .line 229
    const/4 v2, 0x0

    .line 230
    invoke-virtual {v4, v5, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;I)V

    .line 231
    .line 232
    .line 233
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 234
    .line 235
    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 236
    .line 237
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNormalizedUserId()I

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    invoke-virtual {v3, v1, v7, v2}, Lcom/android/server/notification/NotificationHistoryManager;->updateCancelEvent(ILjava/lang/String;Z)V

    .line 242
    .line 243
    .line 244
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 248
    .line 249
    invoke-virtual {v1, v10}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 253
    .line 254
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    .line 258
    .line 259
    iget-object v1, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    iget-object v2, v10, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 266
    .line 267
    invoke-virtual {v10}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;

    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    invoke-direct {v4, v0, v1, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 278
    .line 279
    .line 280
    monitor-exit v9

    .line 281
    return-void

    .line 282
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    throw v0
.end method

.method public onNotificationDataUpdateFromPDC(Ljava/util/List;)V
    .locals 4

    .line 1
    const-string v0, "Update most contacts. size= "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v2, "NotificationService"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 36
    .line 37
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationHighlightCore:Lcom/android/server/notification/NotificationHighlightCore;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_1

    .line 45
    :cond_0
    :goto_0
    monitor-exit v1

    .line 46
    return-void

    .line 47
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw p0
.end method

.method public onNotificationDirectReplied(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string/jumbo v1, "notification interaction"

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto/16 :goto_4

    .line 39
    .line 40
    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x0

    .line 58
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 61
    .line 62
    monitor-enter v1

    .line 63
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 64
    .line 65
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 72
    .line 73
    if-eqz p1, :cond_5

    .line 74
    .line 75
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    .line 81
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 82
    .line 83
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v2, p1, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_1
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_3
    :goto_2
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 108
    .line 109
    const/high16 v3, 0x10000

    .line 110
    .line 111
    or-int/2addr v2, v3

    .line 112
    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 113
    .line 114
    :cond_4
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setDirectReplied()V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    const/16 v3, 0x636

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x4

    .line 134
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 142
    .line 143
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 144
    .line 145
    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DIRECT_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 146
    .line 147
    check-cast v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 148
    .line 149
    invoke-virtual {v0, v2, p1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 153
    .line 154
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 155
    .line 156
    .line 157
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 158
    .line 159
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 160
    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 162
    .line 163
    .line 164
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;

    .line 177
    .line 178
    const/4 v4, 0x2

    .line 179
    invoke-direct {v3, p0, v0, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, v2, p1, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 183
    .line 184
    .line 185
    :cond_5
    monitor-exit v1

    .line 186
    return-void

    .line 187
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 188
    throw p0

    .line 189
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    throw p0
.end method

.method public onNotificationError(IILjava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 9
    .line 10
    move-object/from16 v14, p3

    .line 11
    .line 12
    move-object/from16 v15, p4

    .line 13
    .line 14
    move/from16 v13, p5

    .line 15
    .line 16
    move/from16 v11, p9

    .line 17
    .line 18
    invoke-virtual {v2, v13, v11, v14, v15}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(IILjava/lang/String;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v5, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 27
    .line 28
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    iget v5, v5, Landroid/app/Notification;->flags:I

    .line 33
    .line 34
    and-int/lit8 v5, v5, 0x40

    .line 35
    .line 36
    if-eqz v5, :cond_0

    .line 37
    .line 38
    move/from16 v16, v4

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_4

    .line 43
    :cond_0
    move/from16 v16, v3

    .line 44
    .line 45
    :goto_0
    if-eqz v2, :cond_1

    .line 46
    .line 47
    iget-object v2, v2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget v2, v2, Landroid/app/Notification;->flags:I

    .line 54
    .line 55
    const v5, 0x8000

    .line 56
    .line 57
    .line 58
    and-int/2addr v2, v5

    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    move v2, v4

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move v2, v3

    .line 64
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 66
    .line 67
    const/4 v9, 0x0

    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v12, 0x4

    .line 70
    const/4 v1, 0x0

    .line 71
    move/from16 v4, p1

    .line 72
    .line 73
    move/from16 v5, p2

    .line 74
    .line 75
    move-object/from16 v6, p3

    .line 76
    .line 77
    move-object/from16 v7, p4

    .line 78
    .line 79
    move/from16 v8, p5

    .line 80
    .line 81
    move/from16 v11, p9

    .line 82
    .line 83
    move-object v13, v1

    .line 84
    invoke-virtual/range {v3 .. v13}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    .line 85
    .line 86
    .line 87
    if-nez v16, :cond_2

    .line 88
    .line 89
    if-eqz v2, :cond_4

    .line 90
    .line 91
    :cond_2
    if-eqz v16, :cond_3

    .line 92
    .line 93
    const/4 v1, 0x3

    .line 94
    :goto_2
    move v9, v1

    .line 95
    goto :goto_3

    .line 96
    :cond_3
    const/4 v1, 0x6

    .line 97
    goto :goto_2

    .line 98
    :goto_3
    new-instance v10, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;

    .line 99
    .line 100
    move-object v1, v10

    .line 101
    move-object/from16 v2, p0

    .line 102
    .line 103
    move/from16 v3, p6

    .line 104
    .line 105
    move/from16 v4, p7

    .line 106
    .line 107
    move-object/from16 v5, p3

    .line 108
    .line 109
    move-object/from16 v6, p4

    .line 110
    .line 111
    move/from16 v7, p5

    .line 112
    .line 113
    move-object/from16 v8, p8

    .line 114
    .line 115
    invoke-direct/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$3;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 116
    .line 117
    .line 118
    invoke-static {v10}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    return-void

    .line 122
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    throw v0
.end method

.method public onNotificationExpansionChanged(Ljava/lang/String;ZZI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 15
    .line 16
    if-eqz p1, :cond_9

    .line 17
    .line 18
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 19
    .line 20
    iput-boolean p3, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isExpanded:Z

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateVisiblyExpandedStats()V

    .line 23
    .line 24
    .line 25
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 26
    .line 27
    iget-wide v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    cmp-long v1, v1, v3

    .line 32
    .line 33
    if-ltz v1, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 36
    .line 37
    invoke-virtual {v1, p1, p4}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto/16 :goto_6

    .line 43
    .line 44
    :cond_0
    :goto_0
    if-eqz p2, :cond_5

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 47
    .line 48
    .line 49
    move-result-object p4

    .line 50
    const/16 v1, 0x80

    .line 51
    .line 52
    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 53
    .line 54
    .line 55
    move-result-object p4

    .line 56
    if-eqz p3, :cond_1

    .line 57
    .line 58
    const/4 v1, 0x3

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/16 v1, 0xe

    .line 61
    .line 62
    :goto_1
    invoke-virtual {p4, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 63
    .line 64
    .line 65
    move-result-object p4

    .line 66
    invoke-static {p4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 67
    .line 68
    .line 69
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    iget-object p4, p4, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 72
    .line 73
    if-eqz p2, :cond_3

    .line 74
    .line 75
    if-eqz p3, :cond_2

    .line 76
    .line 77
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_USER:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_3
    if-eqz p3, :cond_4

    .line 84
    .line 85
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_OPEN_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_DETAIL_CLOSE_SYSTEM:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 89
    .line 90
    :goto_2
    check-cast p4, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 91
    .line 92
    invoke-virtual {p4, v1, p1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    if-eqz p3, :cond_8

    .line 96
    .line 97
    if-eqz p2, :cond_8

    .line 98
    .line 99
    iget-object p4, p1, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 100
    .line 101
    invoke-virtual {p4}, Landroid/service/notification/NotificationStats;->setExpanded()V

    .line 102
    .line 103
    .line 104
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 105
    .line 106
    invoke-virtual {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 107
    .line 108
    .line 109
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 110
    .line 111
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    .line 113
    .line 114
    .line 115
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 116
    if-nez v1, :cond_6

    .line 117
    .line 118
    :try_start_2
    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    goto :goto_5

    .line 120
    :cond_6
    :try_start_3
    invoke-virtual {p4, p1}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget-wide v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstExpandedTimeMs:J

    .line 125
    .line 126
    const-wide/16 v4, -0x1

    .line 127
    .line 128
    cmp-long v2, v2, v4

    .line 129
    .line 130
    if-nez v2, :cond_7

    .line 131
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    .line 134
    .line 135
    move-result-wide v2

    .line 136
    iput-wide v2, v1, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstExpandedTimeMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 137
    .line 138
    goto :goto_3

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_4

    .line 141
    :cond_7
    :goto_3
    :try_start_4
    monitor-exit p4

    .line 142
    goto :goto_5

    .line 143
    :goto_4
    monitor-exit p4

    .line 144
    throw p0

    .line 145
    :cond_8
    :goto_5
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 146
    .line 147
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 148
    .line 149
    iget-object p4, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;

    .line 163
    .line 164
    invoke-direct {v2, p0, v1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, p4, p1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 168
    .line 169
    .line 170
    :cond_9
    monitor-exit v0

    .line 171
    return-void

    .line 172
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    throw p0
.end method

.method public onNotificationFeedbackReceived(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "No notification with key: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mDeviceIdleManager:Landroid/os/DeviceIdleManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo v2, "notification interaction"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/DeviceIdleManager;->endIdle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 21
    .line 22
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    sget-boolean p0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const-string p0, "NotificationService"

    .line 37
    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception p0

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    monitor-exit v1

    .line 57
    return-void

    .line 58
    :cond_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 61
    .line 62
    invoke-virtual {p0, v2, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantFeedbackReceived(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)V

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 67
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0
.end method

.method public onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 9
    .line 10
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->getPackageImportanceWithIdentity(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v1

    .line 51
    :try_start_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 52
    .line 53
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 54
    .line 55
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    invoke-static {}, Landroid/app/Flags;->lifetimeExtensionRefactor()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 72
    .line 73
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, p1, v3, v0}, Lcom/android/server/notification/NotificationManagerService;->maybeNotifySystemUiListenerLifetimeExtendedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :catchall_1
    move-exception p0

    .line 82
    goto/16 :goto_3

    .line 83
    .line 84
    :cond_2
    :goto_2
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iget v2, v0, Landroid/app/Notification;->flags:I

    .line 91
    .line 92
    const/high16 v3, 0x10000

    .line 93
    .line 94
    or-int/2addr v2, v3

    .line 95
    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 96
    .line 97
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 98
    .line 99
    invoke-virtual {v0}, Landroid/service/notification/NotificationStats;->setSmartReplied()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v2, 0x567

    .line 107
    .line 108
    invoke-virtual {v0, v2}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    iget-boolean v0, p1, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 117
    .line 118
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const/16 v2, 0x640

    .line 123
    .line 124
    invoke-virtual {p2, v2, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 125
    .line 126
    .line 127
    move-result-object p2

    .line 128
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object p4

    .line 132
    const/16 v0, 0x65d

    .line 133
    .line 134
    invoke-virtual {p2, v0, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    iget-boolean p4, p1, Lcom/android/server/notification/NotificationRecord;->mEditChoicesBeforeSending:Z

    .line 139
    .line 140
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    const/16 v0, 0x66f

    .line 145
    .line 146
    invoke-virtual {p2, v0, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    .line 152
    .line 153
    move-result-object p4

    .line 154
    const/16 p5, 0x670

    .line 155
    .line 156
    invoke-virtual {p2, p5, p4}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    iget-object p4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 161
    .line 162
    iget-object p4, p4, Lcom/android/server/notification/NotificationManagerService;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 163
    .line 164
    invoke-virtual {p4, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 165
    .line 166
    .line 167
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 168
    .line 169
    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 170
    .line 171
    sget-object p4, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->NOTIFICATION_SMART_REPLIED:Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    .line 172
    .line 173
    check-cast p2, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 174
    .line 175
    invoke-virtual {p2, p4, p1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    .line 176
    .line 177
    .line 178
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 179
    .line 180
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationManagerService;->reportUserInteraction(Lcom/android/server/notification/NotificationRecord;)V

    .line 181
    .line 182
    .line 183
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 184
    .line 185
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 186
    .line 187
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    .line 190
    .line 191
    .line 192
    move-result p4

    .line 193
    iget-boolean v6, p1, Lcom/android/server/notification/NotificationRecord;->mSuggestionsGeneratedByAssistant:Z

    .line 194
    .line 195
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    new-instance p1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;

    .line 203
    .line 204
    const/4 v7, 0x0

    .line 205
    move-object v2, p1

    .line 206
    move-object v3, p0

    .line 207
    move-object v5, p3

    .line 208
    invoke-direct/range {v2 .. v7}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/Object;ZI)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, p2, p4, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;ILjava/util/function/BiConsumer;)V

    .line 212
    .line 213
    .line 214
    :cond_3
    monitor-exit v1

    .line 215
    return-void

    .line 216
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    throw p0

    .line 218
    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    throw p0
.end method

.method public onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    array-length v1, p1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_7

    .line 10
    .line 11
    aget-object v4, p1, v3

    .line 12
    .line 13
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 14
    .line 15
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 16
    .line 17
    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 24
    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :cond_0
    iget-object v6, v5, Lcom/android/server/notification/NotificationRecord;->mStats:Landroid/service/notification/NotificationStats;

    .line 30
    .line 31
    invoke-virtual {v6}, Landroid/service/notification/NotificationStats;->hasSeen()Z

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_2

    .line 36
    .line 37
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    .line 38
    .line 39
    if-eqz v6, :cond_1

    .line 40
    .line 41
    const-string v6, "NotificationService"

    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v8, "Marking notification as visible "

    .line 49
    .line 50
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v8, v4, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto/16 :goto_9

    .line 68
    .line 69
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 75
    .line 76
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->canSendLoggingData(Lcom/android/server/notification/NotificationRecord;)Z

    .line 78
    .line 79
    .line 80
    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    if-nez v7, :cond_3

    .line 82
    .line 83
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    :try_start_3
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->getOrCreateNotificationLogLocked(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    iget-wide v8, v7, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstShownTimeMs:J

    .line 90
    .line 91
    const-wide/16 v10, -0x1

    .line 92
    .line 93
    cmp-long v8, v8, v10

    .line 94
    .line 95
    if-nez v8, :cond_4

    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v8

    .line 101
    iput-wide v8, v7, Lcom/android/server/notification/sec/runestone/CollectionContract$Notification$Log;->firstShownTimeMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :catchall_1
    move-exception p0

    .line 105
    goto :goto_6

    .line 106
    :cond_4
    :goto_2
    :try_start_4
    monitor-exit v6

    .line 107
    :goto_3
    iget v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 108
    .line 109
    iget v7, v4, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 110
    .line 111
    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 112
    .line 113
    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 114
    .line 115
    const/4 v9, 0x1

    .line 116
    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V

    .line 117
    .line 118
    .line 119
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 120
    .line 121
    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 122
    .line 123
    invoke-virtual {v6, v5, v9}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 124
    .line 125
    .line 126
    iget-object v6, v4, Lcom/android/internal/statusbar/NotificationVisibility;->location:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 127
    .line 128
    sget-object v7, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    .line 129
    .line 130
    if-ne v6, v7, :cond_5

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_5
    iget-object v7, v5, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    .line 134
    .line 135
    iget-wide v7, v7, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeToFirstVisibleExpansionMs:J

    .line 136
    .line 137
    const-wide/16 v9, 0x0

    .line 138
    .line 139
    cmp-long v7, v7, v9

    .line 140
    .line 141
    if-ltz v7, :cond_6

    .line 142
    .line 143
    :goto_4
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 144
    .line 145
    invoke-virtual {v6}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    invoke-virtual {v7, v5, v6}, Lcom/android/server/notification/NotificationManagerService;->logSmartSuggestionsVisible(Lcom/android/server/notification/NotificationRecord;I)V

    .line 150
    .line 151
    .line 152
    :cond_6
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 153
    .line 154
    invoke-virtual {v6, v5}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 158
    .line 159
    .line 160
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :goto_6
    monitor-exit v6

    .line 165
    throw p0

    .line 166
    :cond_7
    array-length p1, p2

    .line 167
    move v1, v2

    .line 168
    :goto_7
    if-ge v1, p1, :cond_9

    .line 169
    .line 170
    aget-object v3, p2, v1

    .line 171
    .line 172
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 173
    .line 174
    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    .line 175
    .line 176
    iget-object v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v4

    .line 182
    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 183
    .line 184
    if-nez v4, :cond_8

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_8
    iget v5, v3, Lcom/android/internal/statusbar/NotificationVisibility;->rank:I

    .line 188
    .line 189
    iget v6, v3, Lcom/android/internal/statusbar/NotificationVisibility;->count:I

    .line 190
    .line 191
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 192
    .line 193
    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 194
    .line 195
    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/server/notification/NotificationRecord;->setVisibility(ZIILcom/android/server/notification/NotificationRecordLogger;)V

    .line 196
    .line 197
    .line 198
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 199
    .line 200
    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 201
    .line 202
    invoke-virtual {v5, v4, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    .line 206
    .line 207
    .line 208
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 209
    .line 210
    goto :goto_7

    .line 211
    :cond_9
    monitor-exit v0

    .line 212
    return-void

    .line 213
    :goto_9
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 214
    throw p0
.end method

.method public onPanelHidden()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0x7f

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 13
    .line 14
    sget-object v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_CLOSE:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 15
    .line 16
    check-cast v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 19
    .line 20
    check-cast v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    const/16 v1, 0x6b6d

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 31
    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 60
    .line 61
    new-instance v3, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;

    .line 62
    .line 63
    const/4 v4, 0x2

    .line 64
    invoke-direct {v3, v4, p0, v1}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public onPanelRevealed(ZI)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x7f

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v2, "note_load"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v2, p2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationRecordLogger:Lcom/android/server/notification/NotificationRecordLogger;

    .line 23
    .line 24
    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;->NOTIFICATION_PANEL_OPEN:Lcom/android/server/notification/NotificationRecordLogger$NotificationPanelEvent;

    .line 25
    .line 26
    check-cast v1, Lcom/android/server/notification/NotificationRecordLoggerImpl;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 29
    .line 30
    check-cast v1, Lcom/android/internal/logging/UiEventLoggerImpl;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/android/internal/logging/UiEventLoggerImpl;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x6b6c

    .line 36
    .line 37
    invoke-static {v1, p2}, Landroid/util/EventLog;->writeEvent(II)I

    .line 38
    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->clearEffects()V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 70
    .line 71
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    .line 72
    .line 73
    new-instance v2, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;

    .line 74
    .line 75
    const/4 v3, 0x3

    .line 76
    invoke-direct {v2, p2, v3, p0, v0}, Lcom/android/server/notification/NotificationManagerService$$ExternalSyntheticLambda16;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mHistoryManager:Lcom/android/server/notification/NotificationHistoryManager;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/notification/NotificationHistoryManager;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    if-ge v2, v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserUnlockedStates:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationHistoryManager;->mUserState:Landroid/util/SparseArray;

    .line 33
    .line 34
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/android/server/notification/NotificationHistoryDatabase;

    .line 39
    .line 40
    if-eqz v3, :cond_1

    .line 41
    .line 42
    iget-object v4, v3, Lcom/android/server/notification/NotificationHistoryDatabase;->mFileWriteHandler:Landroid/os/Handler;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/android/server/notification/NotificationHistoryDatabase;->mWriteBufferRunnable:Lcom/android/server/notification/NotificationHistoryDatabase$WriteBufferRunnable;

    .line 45
    .line 46
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    throw p0
.end method

.method public updateAutogroupSummary(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;)V
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 6
    .line 7
    invoke-virtual {v0, p2}, Landroid/app/ActivityManager;->getPackageImportance(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v1

    .line 23
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 24
    .line 25
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->updateAutobundledSummaryLocked(ILjava/lang/String;Lcom/android/server/notification/GroupHelper$NotificationAttributes;Z)V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    throw p0
.end method
