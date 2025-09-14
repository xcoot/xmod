.class public final Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $areOnlyNotificationsPermissionsRevoked:Z

.field public final synthetic $reason:Ljava/lang/String;

.field public final synthetic $uid:I

.field public final synthetic this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

.field public final synthetic this$1:Lcom/android/server/permission/access/permission/PermissionService;


# direct methods
.method public constructor <init>(ZLcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;ILcom/android/server/permission/access/permission/PermissionService;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$areOnlyNotificationsPermissionsRevoked:Z

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$0:Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;

    .line 6
    .line 7
    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    .line 8
    .line 9
    iget-object v2, v0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->this$0:Lcom/android/server/permission/access/permission/PermissionService;

    .line 10
    .line 11
    const-string v3, "android.permission.BACKUP"

    .line 12
    .line 13
    const-string v4, "default:0"

    .line 14
    .line 15
    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/permission/access/permission/PermissionService;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget-boolean v2, v2, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    .line 23
    .line 24
    const-string v3, "PermissionService"

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    :try_start_0
    const-string/jumbo v2, "user_setup_complete"

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    if-nez v2, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    :goto_0
    const-string/jumbo v2, "user_setup_personalization_state"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener;->getSecureInt(ILjava/lang/String;)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_4

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v1, 0x1

    .line 65
    if-ne v0, v1, :cond_6

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :catch_0
    move-exception v0

    .line 69
    sget-object v1, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 70
    .line 71
    const-string v1, "Can not find SettingsProvider. Catch NPE to prvent reset."

    .line 72
    .line 73
    invoke-static {v3, v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    .line 77
    .line 78
    iget-boolean v0, v0, Lcom/android/server/permission/access/permission/PermissionService;->mSystemReady:Z

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    sget-object v0, Lcom/android/server/permission/access/permission/PermissionService;->FULLER_PERMISSIONS:Landroid/util/ArrayMap;

    .line 83
    .line 84
    iget v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    .line 85
    .line 86
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    const-string v2, "Do not kill uid "

    .line 91
    .line 92
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v0, " while App BNR is running, before System Ready. kill reason : "

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .line 112
    .line 113
    :cond_5
    return-void

    .line 114
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->this$1:Lcom/android/server/permission/access/permission/PermissionService;

    .line 115
    .line 116
    iget v1, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$uid:I

    .line 117
    .line 118
    iget-object p0, p0, Lcom/android/server/permission/access/permission/PermissionService$OnPermissionFlagsChangedListener$onStateMutated$2$1;->$reason:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1, p0}, Lcom/android/server/permission/access/permission/PermissionService;->access$killUid(Lcom/android/server/permission/access/permission/PermissionService;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
