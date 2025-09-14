.class public final Lcom/android/server/policy/PermissionPolicyService$3;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mPermControllerManagers:Ljava/util/Map;

.field public final mUserSetupUids:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v0, 0xc8

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string/jumbo v1, "user_setup_complete"

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    :goto_0
    move v0, p1

    .line 29
    :goto_1
    const-string v1, "android.intent.extra.UID"

    .line 30
    .line 31
    const/4 v2, -0x1

    .line 32
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 37
    .line 38
    iget-object v1, v1, Lcom/android/server/policy/PermissionPolicyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 39
    .line 40
    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/pkg/AndroidPackage;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 50
    .line 51
    check-cast v0, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 60
    .line 61
    monitor-enter v0

    .line 62
    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 63
    .line 64
    check-cast v1, Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    sub-int/2addr v1, p1

    .line 71
    :goto_2
    if-ltz v1, :cond_2

    .line 72
    .line 73
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 74
    .line 75
    check-cast p1, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, -0x1

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    goto :goto_3

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 96
    .line 97
    check-cast p1, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 100
    .line 101
    .line 102
    monitor-exit v0

    .line 103
    goto :goto_4

    .line 104
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw p0

    .line 106
    :cond_3
    :goto_4
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :cond_4
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 111
    .line 112
    monitor-enter p1

    .line 113
    :try_start_2
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 114
    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v0, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_5

    .line 126
    .line 127
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 128
    .line 129
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p2

    .line 133
    check-cast p0, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_5

    .line 139
    :catchall_1
    move-exception p0

    .line 140
    goto :goto_7

    .line 141
    :cond_5
    :goto_5
    monitor-exit p1

    .line 142
    :goto_6
    return-void

    .line 143
    :goto_7
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    throw p0
.end method

.method public final updateUid(I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    .line 6
    .line 7
    check-cast v1, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Landroid/permission/PermissionControllerManager;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    :try_start_0
    new-instance v1, Landroid/permission/PermissionControllerManager;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2, v0}, Lcom/android/server/policy/PermissionPolicyService;->getUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    .line 37
    .line 38
    check-cast p0, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p0

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    const-string v1, "Could not create PermissionControllerManager for user"

    .line 48
    .line 49
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "PermissionPolicyService"

    .line 60
    .line 61
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
