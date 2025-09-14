.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/Object;

.field public final synthetic f$3:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;Ljava/lang/String;ILjava/util/List;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ILandroid/app/role/RoleManager;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/telephony/TelephonyManager;ILandroid/telephony/data/ApnSetting;)V
    .locals 1

    .line 3
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 10
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 14
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    .line 16
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    .line 18
    check-cast p0, Landroid/telephony/data/ApnSetting;

    .line 20
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v1, v0, v2, p0}, Landroid/telephony/TelephonyManager;->modifyDevicePolicyOverrideApn(Landroid/content/Context;ILandroid/telephony/data/ApnSetting;)Z

    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    .line 33
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;

    .line 35
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    .line 37
    check-cast v1, Ljava/lang/String;

    .line 39
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    .line 41
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    .line 43
    check-cast p0, Ljava/util/List;

    .line 45
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 47
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 49
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 65
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    return-object p0

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$0:Ljava/lang/Object;

    .line 71
    check-cast v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 73
    iget v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$1:I

    .line 75
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$2:Ljava/lang/Object;

    .line 77
    check-cast v2, Landroid/app/role/RoleManager;

    .line 79
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda177;->f$3:Ljava/lang/Object;

    .line 81
    check-cast p0, Ljava/lang/String;

    .line 83
    const/4 v3, -0x1

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    if-ne v1, v3, :cond_1

    .line 88
    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 93
    const-class v0, Lcom/android/server/pm/UserManagerInternal;

    .line 95
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/android/server/pm/UserManagerInternal;

    .line 101
    const/4 v1, 0x1

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getUsers(Z)Ljava/util/List;

    .line 105
    move-result-object v0

    .line 106
    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    new-instance v0, Landroid/content/pm/UserInfo;

    .line 112
    invoke-direct {v0, v1, v5, v4}, Landroid/content/pm/UserInfo;-><init>(ILjava/lang/String;I)V

    .line 115
    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    .line 118
    move-result-object v0

    .line 119
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v0

    .line 123
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v1

    .line 127
    if-eqz v1, :cond_3

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 135
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, p0, v1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 142
    move-result-object v1

    .line 143
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_2

    .line 149
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object p0

    .line 153
    move-object v5, p0

    .line 154
    check-cast v5, Ljava/lang/String;

    .line 156
    :cond_3
    return-object v5

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
