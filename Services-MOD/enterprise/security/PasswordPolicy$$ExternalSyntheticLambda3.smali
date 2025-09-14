.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$0:I

    .line 5
    iput-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 7
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$0:I

    .line 8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 10
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$2:I

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 15
    move-result v5

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    const-string v0, "Admin %d has changed password required pattern to %s"

    .line 26
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v7

    .line 30
    const/4 v2, 0x5

    .line 31
    const/4 v3, 0x1

    .line 32
    const/4 v4, 0x1

    .line 33
    const-string v6, "PasswordPolicy"

    .line 35
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 38
    return-void

    .line 39
    :pswitch_0
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$0:I

    .line 41
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$1:Ljava/lang/String;

    .line 43
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda3;->f$2:I

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 48
    move-result v5

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p0

    .line 53
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 57
    const-string v0, "Admin %d has changed password forbidden strings to %s"

    .line 59
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    move-result-object v7

    .line 63
    const/4 v2, 0x5

    .line 64
    const/4 v3, 0x1

    .line 65
    const/4 v4, 0x1

    .line 66
    const-string v6, "PasswordPolicy"

    .line 68
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 71
    return-void

    .line 72
    nop

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
