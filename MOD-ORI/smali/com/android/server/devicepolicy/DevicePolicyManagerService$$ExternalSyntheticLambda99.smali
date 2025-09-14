.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda99;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda99;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda99;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda99;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda99;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 4
    .line 5
    check-cast p1, Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    move-object v2, p2

    .line 11
    check-cast v2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 12
    .line 13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget v4, v2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 28
    .line 29
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 30
    .line 31
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PACKAGES_SUSPENDED:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 32
    .line 33
    new-instance v3, Landroid/app/admin/PackageSetPolicyValue;

    .line 34
    .line 35
    new-instance p0, Landroid/util/ArraySet;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->suspendedPackages:Ljava/util/List;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v3, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    .line 43
    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void

    .line 50
    :pswitch_0
    check-cast p2, Lcom/android/server/devicepolicy/EnforcingAdmin;

    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    iget v6, p2, Lcom/android/server/devicepolicy/EnforcingAdmin;->mUserId:I

    .line 56
    .line 57
    iget v0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 62
    .line 63
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 64
    .line 65
    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    .line 66
    .line 67
    iget v2, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 68
    .line 69
    invoke-direct {v3, v2}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 70
    .line 71
    .line 72
    const/4 v5, 0x0

    .line 73
    move-object v2, p2

    .line 74
    move v4, v6

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 76
    .line 77
    .line 78
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/ActiveAdmin;->getParentActiveAdmin()Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget v0, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 85
    .line 86
    if-eqz v0, :cond_3

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mDevicePolicyEngine:Lcom/android/server/devicepolicy/DevicePolicyEngine;

    .line 89
    .line 90
    sget-object v1, Lcom/android/server/devicepolicy/PolicyDefinition;->PASSWORD_COMPLEXITY:Lcom/android/server/devicepolicy/PolicyDefinition;

    .line 91
    .line 92
    new-instance v3, Landroid/app/admin/IntegerPolicyValue;

    .line 93
    .line 94
    iget p1, p1, Lcom/android/server/devicepolicy/ActiveAdmin;->mPasswordComplexity:I

    .line 95
    .line 96
    invoke-direct {v3, p1}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    const/4 v5, 0x0

    .line 104
    move-object v2, p2

    .line 105
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/devicepolicy/DevicePolicyEngine;->setLocalPolicy(Lcom/android/server/devicepolicy/PolicyDefinition;Lcom/android/server/devicepolicy/EnforcingAdmin;Landroid/app/admin/PolicyValue;IZ)V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
