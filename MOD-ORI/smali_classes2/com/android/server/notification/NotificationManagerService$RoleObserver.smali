.class public final Lcom/android/server/notification/NotificationManagerService$RoleObserver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# instance fields
.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mMainLooper:Landroid/os/Looper;

.field public mNonBlockableDefaultApps:Landroid/util/ArrayMap;

.field public final mPm:Landroid/content/pm/IPackageManager;

.field public final mRm:Landroid/app/role/RoleManager;

.field public volatile mTrampolineExemptUids:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/IPackageManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5
    .line 6
    new-instance p1, Landroid/util/ArraySet;

    .line 7
    .line 8
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mMainLooper:Landroid/os/Looper;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getUidForPackage(ILjava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mPm:Landroid/content/pm/IPackageManager;

    .line 2
    .line 3
    const-wide/32 v0, 0x20000

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p2, v0, v1, p1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    .line 7
    .line 8
    .line 9
    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return p0

    .line 11
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string/jumbo v0, "role manager has bad default "

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p2, " "

    .line 23
    .line 24
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    const-string p1, "NotificationService"

    .line 35
    .line 36
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    const/4 p0, -0x1

    .line 40
    return p0
.end method

.method public isApprovedPackageForRoleForUser(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/util/ArrayMap;

    .line 8
    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/util/ArraySet;

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    return p0
.end method

.method public isUidExemptFromTrampolineRestrictions(I)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->NON_BLOCKABLE_DEFAULT_ROLES:[Ljava/lang/String;

    .line 4
    .line 5
    array-length v3, v2

    .line 6
    if-ge v1, v3, :cond_5

    .line 7
    .line 8
    aget-object v2, v2, v1

    .line 9
    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_4

    .line 15
    .line 16
    new-instance v1, Landroid/util/ArraySet;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 19
    .line 20
    invoke-virtual {v2, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    .line 28
    .line 29
    new-instance v3, Landroid/util/ArrayMap;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Landroid/util/ArrayMap;

    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    new-instance v4, Landroid/util/ArraySet;

    .line 49
    .line 50
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    check-cast v3, Landroid/util/ArraySet;

    .line 58
    .line 59
    new-instance v4, Landroid/util/ArraySet;

    .line 60
    .line 61
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 62
    .line 63
    .line 64
    new-instance v5, Landroid/util/ArraySet;

    .line 65
    .line 66
    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_1

    .line 78
    .line 79
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    check-cast v7, Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-nez v8, :cond_0

    .line 90
    .line 91
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_1
    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_3

    .line 104
    .line 105
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v8

    .line 115
    if-nez v8, :cond_2

    .line 116
    .line 117
    new-instance v8, Landroid/util/Pair;

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 120
    .line 121
    .line 122
    move-result v9

    .line 123
    invoke-virtual {p0, v9, v7}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(ILjava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v9

    .line 127
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    invoke-direct {v8, v7, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mNonBlockableDefaultApps:Landroid/util/ArrayMap;

    .line 150
    .line 151
    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 155
    .line 156
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 157
    .line 158
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 159
    .line 160
    .line 161
    move-result v2

    .line 162
    invoke-virtual {v1, v2, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->updateDefaultApps(ILandroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_5
    :goto_3
    const-string v1, "android.app.role.BROWSER"

    .line 171
    .line 172
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_6

    .line 177
    .line 178
    goto :goto_4

    .line 179
    :cond_6
    const/4 p1, 0x1

    .line 180
    new-array p1, p1, [Landroid/os/UserHandle;

    .line 181
    .line 182
    aput-object p2, p1, v0

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->updateTrampolineExemptUidsForUsers([Landroid/os/UserHandle;)V

    .line 185
    .line 186
    .line 187
    :goto_4
    return-void
.end method

.method public final varargs updateTrampolineExemptUidsForUsers([Landroid/os/UserHandle;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mMainLooper:Landroid/os/Looper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 11
    .line 12
    new-instance v1, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x0

    .line 22
    move v4, v3

    .line 23
    :goto_0
    if-ge v4, v2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    check-cast v5, Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {p1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v6

    .line 47
    if-nez v6, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    array-length v0, p1

    .line 56
    :goto_1
    if-ge v3, v0, :cond_4

    .line 57
    .line 58
    aget-object v2, p1, v3

    .line 59
    .line 60
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mRm:Landroid/app/role/RoleManager;

    .line 61
    .line 62
    const-string v5, "android.app.role.BROWSER"

    .line 63
    .line 64
    invoke-virtual {v4, v5, v2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    if-eqz v5, :cond_3

    .line 77
    .line 78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    invoke-virtual {p0, v6, v5}, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->getUidForPackage(ILjava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    const/4 v7, -0x1

    .line 93
    if-eq v6, v7, :cond_2

    .line 94
    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    const-string v6, "Bad uid (-1) for browser package "

    .line 104
    .line 105
    const-string v7, "NotificationService"

    .line 106
    .line 107
    invoke-static {v6, v5, v7}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    iput-object v1, p0, Lcom/android/server/notification/NotificationManagerService$RoleObserver;->mTrampolineExemptUids:Landroid/util/ArraySet;

    .line 115
    .line 116
    return-void
.end method
