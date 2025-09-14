.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

.field public final synthetic val$userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;->val$userHandle:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;->this$1:Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 8
    .line 9
    iget v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$1$1;->val$userHandle:I

    .line 10
    .line 11
    sget-object v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->DELEGATIONS:[Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    new-instance v8, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "android.intent.extra.USER"

    .line 22
    .line 23
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    monitor-enter v9

    .line 35
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v10

    .line 39
    invoke-virtual {v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminsForLockscreenPoliciesLocked(I)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    move-object v12, v2

    .line 44
    check-cast v12, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v13

    .line 50
    const/4 v15, 0x0

    .line 51
    :goto_0
    if-ge v15, v13, :cond_2

    .line 52
    .line 53
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    move-object v7, v2

    .line 58
    check-cast v7, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 59
    .line 60
    iget-boolean v2, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->isPermissionBased:Z

    .line 61
    .line 62
    if-nez v2, :cond_0

    .line 63
    .line 64
    iget-object v2, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->info:Landroid/app/admin/DeviceAdminInfo;

    .line 65
    .line 66
    const/4 v3, 0x6

    .line 67
    invoke-virtual {v2, v3}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    goto :goto_2

    .line 76
    :cond_0
    :goto_1
    iget-wide v2, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 77
    .line 78
    const-wide/16 v4, 0x0

    .line 79
    .line 80
    cmp-long v2, v2, v4

    .line 81
    .line 82
    if-lez v2, :cond_1

    .line 83
    .line 84
    iget-wide v2, v7, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 85
    .line 86
    sget-wide v16, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->EXPIRATION_GRACE_PERIOD_MS:J

    .line 87
    .line 88
    sub-long v16, v2, v16

    .line 89
    .line 90
    cmp-long v6, v10, v16

    .line 91
    .line 92
    if-ltz v6, :cond_1

    .line 93
    .line 94
    cmp-long v2, v2, v4

    .line 95
    .line 96
    if-lez v2, :cond_1

    .line 97
    .line 98
    const-string v4, "android.app.action.ACTION_PASSWORD_EXPIRING"

    .line 99
    .line 100
    const/16 v16, 0x0

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    move-object v2, v1

    .line 104
    move-object v3, v7

    .line 105
    move-object v5, v8

    .line 106
    move-object v14, v7

    .line 107
    move/from16 v7, v16

    .line 108
    .line 109
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->sendAdminCommandLocked(Lcom/android/server/devicepolicy/ActiveAdmin;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/devicepolicy/DevicePolicyManagerService$4;Z)Z

    .line 110
    .line 111
    .line 112
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 113
    .line 114
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mKnoxPolicyHelper:Lcom/android/server/devicepolicy/KnoxPolicyHelper;

    .line 118
    .line 119
    invoke-virtual {v2, v0, v14}, Lcom/android/server/devicepolicy/KnoxPolicyHelper;->handlePasswordExpirationNotification(ILcom/android/server/devicepolicy/ActiveAdmin;)V

    .line 120
    .line 121
    .line 122
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    iget-object v2, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 126
    .line 127
    const/4 v3, 0x0

    .line 128
    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;IZ)V

    .line 129
    .line 130
    .line 131
    monitor-exit v9

    .line 132
    return-void

    .line 133
    :goto_2
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    throw v0
.end method
