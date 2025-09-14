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

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 6
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 12
    iput-object p5, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 11

    .line 1
    iget-object v6, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 3
    iget v7, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$1:I

    .line 5
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$2:Landroid/app/admin/PolicyValue;

    .line 7
    iget-object v9, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 9
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyEngine$$ExternalSyntheticLambda2;->f$4:Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 11
    iget-object v0, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 13
    invoke-virtual {v0, v7}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object v10

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 27
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 33
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    move-result v4

    .line 41
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 43
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    .line 46
    move-result-object v1

    .line 47
    if-eq v4, v7, :cond_0

    .line 49
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 58
    move-result v1

    .line 59
    if-ne v1, v7, :cond_0

    .line 61
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 63
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_0

    .line 73
    iget-object v1, v6, Lcom/android/server/devicepolicy/DevicePolicyEngine;->mUserManager:Landroid/os/UserManager;

    .line 75
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getUserProperties(Landroid/os/UserHandle;)Landroid/content/pm/UserProperties;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/pm/UserProperties;->getInheritDevicePolicy()I

    .line 86
    move-result v0

    .line 87
    const/4 v1, 0x1

    .line 88
    if-ne v0, v1, :cond_0

    .line 90
    if-eqz v8, :cond_1

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

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-virtual {v6, v9, p0, v4}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->removeLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;I)V

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    return-void
.end method
