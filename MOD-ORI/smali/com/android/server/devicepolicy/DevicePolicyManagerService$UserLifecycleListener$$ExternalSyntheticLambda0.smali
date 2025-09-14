.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

.field public final synthetic f$1:Landroid/content/pm/UserInfo;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;Landroid/content/pm/UserInfo;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/UserInfo;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$1:Landroid/content/pm/UserInfo;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$UserLifecycleListener;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    .line 9
    const-string/jumbo v0, "handleNewUserCreated(): ignoring for user "

    .line 10
    .line 11
    .line 12
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isProfile()Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-nez v4, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v4, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    invoke-direct {v4, v3, v1, v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-static {v4}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget v5, v1, Landroid/content/pm/UserInfo;->id:I

    .line 34
    .line 35
    if-eqz p0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    monitor-enter v3

    .line 42
    :try_start_0
    iget-object v4, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPendingUserCreatedCallbackTokens:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 49
    .line 50
    const-string v1, "DevicePolicyManager"

    .line 51
    .line 52
    new-instance v4, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " due to token "

    .line 61
    .line 62
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    iget-object v0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mPendingUserCreatedCallbackTokens:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    monitor-exit v3

    .line 81
    goto :goto_3

    .line 82
    :catchall_0
    move-exception p0

    .line 83
    goto :goto_1

    .line 84
    :cond_1
    monitor-exit v3

    .line 85
    goto :goto_2

    .line 86
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    throw p0

    .line 88
    :cond_2
    :goto_2
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->hasDeviceOwner()Z

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    if-eqz p0, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isFull()Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-eqz p0, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-nez p0, :cond_5

    .line 107
    .line 108
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    if-eqz p0, :cond_3

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_3
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    .line 121
    .line 122
    .line 123
    move-result p0

    .line 124
    if-eqz p0, :cond_4

    .line 125
    .line 126
    iget-object p0, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerComponent()Landroid/content/ComponentName;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    const-string p0, "DevicePolicyManager"

    .line 133
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v1, "Automatically setting profile owner ("

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v1, ") on new user "

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p0, v0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    const/4 v6, 0x0

    .line 160
    const/4 v7, 0x1

    .line 161
    move-object v3, v4

    .line 162
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->manageUserUnchecked(Landroid/content/ComponentName;Landroid/content/ComponentName;ILandroid/os/PersistableBundle;Z)V

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_4
    const-string p0, "DevicePolicyManager"

    .line 167
    .line 168
    const-string v0, "User %d added on DO mode; setting ShowNewUserDisclaimer"

    .line 169
    .line 170
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-static {p0, v0, v1}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    const-string/jumbo p0, "needed"

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v5, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setShowNewUserDisclaimer(ILjava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_5
    :goto_3
    return-void
.end method
