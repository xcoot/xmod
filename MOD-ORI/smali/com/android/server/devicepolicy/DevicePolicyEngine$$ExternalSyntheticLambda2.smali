.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/app/admin/PolicyValue;

.field public final synthetic f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

.field public final synthetic f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyEngine;ILandroid/app/admin/PolicyValue;Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 2
    .line 3
    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    .line 6
    .line 7
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 10
    .line 11
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 12
    .line 13
    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 42
    .line 43
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eq v4, v7, :cond_0

    .line 48
    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v7, :cond_0

    .line 60
    .line 61
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    if-ne v0, v1, :cond_0

    .line 89
    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    const/4 v5, 0x0

    .line 93
    move-object v0, v6

    .line 94
    move-object v1, v9

    .line 95
    move-object v2, p0

    .line 96
    move-object v3, v8

    .line 97
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v6, v9, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method
