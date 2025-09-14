.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:[B

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;ILandroid/content/ComponentName;Ljava/lang/String;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$1:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$2:Landroid/content/ComponentName;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$4:[B

    .line 13
    .line 14
    iput p6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$5:I

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$1:I

    .line 4
    .line 5
    iget-object v3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$2:Landroid/content/ComponentName;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$3:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$4:[B

    .line 10
    .line 11
    iget v6, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda42;->f$5:I

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 17
    .line 18
    .line 19
    move-result v7

    .line 20
    iget-object v2, v0, Lcom/android/server/enterprise/security/PasswordPolicy;->mService:Landroid/app/admin/IDevicePolicyManager;

    .line 21
    .line 22
    invoke-interface/range {v2 .. v7}, Landroid/app/admin/IDevicePolicyManager;->resetPasswordWithTokenMDM(Landroid/content/ComponentName;Ljava/lang/String;[BII)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method
