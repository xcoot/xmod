.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:J

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Landroid/content/ComponentName;JII)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    .line 7
    iput-wide p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    .line 9
    iput p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    .line 10
    iget-wide v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    .line 12
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    :try_start_0
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 19
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 22
    move-result p0

    .line 23
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/app/admin/IDevicePolicyManager;->setPasswordExpirationTimeoutMDM(Landroid/content/ComponentName;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    const-string v0, "PasswordPolicy"

    .line 30
    const-string v1, "Failed talking with device policy service"

    .line 32
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 38
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$1:Landroid/content/ComponentName;

    .line 40
    iget-wide v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$2:J

    .line 42
    iget p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda5;->f$3:I

    .line 44
    iget-object v0, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 46
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 49
    move-result p0

    .line 50
    invoke-interface {v0, v1, v2, v3, p0}, Landroid/app/admin/IDevicePolicyManager;->setMaximumTimeToLockMDM(Landroid/content/ComponentName;JI)V

    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
