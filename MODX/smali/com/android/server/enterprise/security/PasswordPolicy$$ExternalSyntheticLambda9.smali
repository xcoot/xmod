.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    iput-object p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;II)V
    .locals 0

    .line 2
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 10
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 12
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 14
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    move-result p0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-interface {v0, v1, p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    .line 22
    move-result p0

    .line 23
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    move-result-object p0

    .line 27
    return-object p0

    .line 28
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 30
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 32
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 40
    move-result v1

    .line 41
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 43
    invoke-interface {v0, p0, v1}, Landroid/app/admin/IDevicePolicyManager;->clearResetPasswordTokenMDM(Landroid/content/ComponentName;I)Z

    .line 46
    move-result p0

    .line 47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 54
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 56
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 58
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 60
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 63
    move-result p0

    .line 64
    const/4 v2, 0x0

    .line 65
    invoke-interface {v0, v1, p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    .line 68
    move-result p0

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 76
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 78
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 86
    move-result v1

    .line 87
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 89
    invoke-interface {v0, p0, v1}, Landroid/app/admin/IDevicePolicyManager;->isResetPasswordTokenActiveMDM(Landroid/content/ComponentName;I)Z

    .line 92
    move-result p0

    .line 93
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 100
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 102
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 104
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 106
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 109
    move-result p0

    .line 110
    const/4 v2, 0x0

    .line 111
    invoke-interface {v0, v1, p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    .line 114
    move-result p0

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 122
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$1:Landroid/content/ComponentName;

    .line 124
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda9;->f$2:I

    .line 126
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 128
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 131
    move-result p0

    .line 132
    const/4 v2, 0x0

    .line 133
    invoke-interface {v0, v1, p0, v2}, Landroid/app/admin/IDevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    .line 136
    move-result-wide v0

    .line 137
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 140
    move-result-object p0

    .line 141
    return-object p0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
