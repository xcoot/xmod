.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$1:I

    .line 8
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 3
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$1:I

    .line 5
    iget v2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$2:I

    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda11;->f$3:Landroid/os/Bundle;

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 15
    move-result v3

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    const/16 v4, 0x31

    .line 26
    invoke-static {v3, v4, v1}, Landroid/sec/enterprise/auditlog/AuditLog;->logEventAsUser(II[Ljava/lang/Object;)V

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v2, v1, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->setAdminLockEnabledSystemUI(IZZ)V

    .line 33
    const-string/jumbo v0, "knox.container.proxy.POLICY_ADMIN_UNLOCK"

    .line 36
    invoke-static {v0, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method
