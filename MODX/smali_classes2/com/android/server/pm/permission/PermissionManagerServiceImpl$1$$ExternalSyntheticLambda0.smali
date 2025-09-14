.class public final synthetic Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 4
    .line 5
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda0;->f$4:I

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v4, "android.permission.POST_NOTIFICATIONS"

    .line 15
    .line 16
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    const-string v1, "default:0"

    .line 23
    .line 24
    iget-object v4, v0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    .line 25
    .line 26
    const-string v5, "android.permission.BACKUP"

    .line 27
    .line 28
    invoke-virtual {v4, v2, v5, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->checkUidPermission(ILjava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const-string/jumbo v4, "user_setup_complete"

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(ILjava/lang/String;)Ljava/util/Optional;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    new-instance v5, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;

    .line 48
    .line 49
    const/4 v6, 0x0

    .line 50
    invoke-direct {v5, v6}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;-><init>(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    check-cast v4, Ljava/lang/Boolean;

    .line 64
    .line 65
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v4, "user_setup_personalization_state"

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1;->getSecureInt(ILjava/lang/String;)Ljava/util/Optional;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;

    .line 81
    .line 82
    const/4 v4, 0x1

    .line 83
    invoke-direct {v1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$1$$ExternalSyntheticLambda2;-><init>(I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Ljava/lang/Boolean;

    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :goto_0
    if-eqz v0, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v3, :cond_3

    .line 108
    .line 109
    const-string/jumbo v1, "permissions revoked"

    .line 110
    .line 111
    .line 112
    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    invoke-static {v0, p0, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->killUid(IILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :goto_1
    return-void
.end method
