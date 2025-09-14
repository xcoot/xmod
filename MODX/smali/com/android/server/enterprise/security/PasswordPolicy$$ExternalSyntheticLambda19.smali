.class public final synthetic Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(IIII)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 3
    iput p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 5
    iput p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 7
    iput p3, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 8
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 10
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 12
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 15
    move-result v5

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v0

    .line 24
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    const-string v0, "Admin %d has changed password maximum numeric sequence to %d"

    .line 30
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    move-result-object v7

    .line 34
    const/4 v2, 0x5

    .line 35
    const/4 v3, 0x1

    .line 36
    const/4 v4, 0x1

    .line 37
    const-string v6, "PasswordPolicy"

    .line 39
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 42
    return-void

    .line 43
    :pswitch_0
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 45
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 47
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 49
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 52
    move-result v5

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v0

    .line 61
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    const-string v0, "Admin %d has changed maximum failed passwords for disable to %d"

    .line 67
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    const/4 v2, 0x5

    .line 72
    const/4 v3, 0x1

    .line 73
    const/4 v4, 0x1

    .line 74
    const-string v6, "PasswordPolicy"

    .line 76
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 79
    return-void

    .line 80
    :pswitch_1
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 82
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 84
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 86
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 89
    move-result v5

    .line 90
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p0

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v0

    .line 98
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 101
    move-result-object p0

    .line 102
    const-string v0, "Admin %d has changed password maximum character occurrences to %d"

    .line 104
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    move-result-object v7

    .line 108
    const/4 v2, 0x5

    .line 109
    const/4 v3, 0x1

    .line 110
    const/4 v4, 0x1

    .line 111
    const-string v6, "PasswordPolicy"

    .line 113
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 116
    return-void

    .line 117
    :pswitch_2
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 119
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 121
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 123
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 126
    move-result v5

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object p0

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v0

    .line 135
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 138
    move-result-object p0

    .line 139
    const-string v0, "Admin %d has changed password minimum number of changed characters to %d"

    .line 141
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    move-result-object v7

    .line 145
    const/4 v2, 0x5

    .line 146
    const/4 v3, 0x1

    .line 147
    const/4 v4, 0x1

    .line 148
    const-string v6, "PasswordPolicy"

    .line 150
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 153
    return-void

    .line 154
    :pswitch_3
    iget v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$0:I

    .line 156
    iget v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$1:I

    .line 158
    iget v8, p0, Lcom/android/server/enterprise/security/PasswordPolicy$$ExternalSyntheticLambda19;->f$2:I

    .line 160
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 163
    move-result v5

    .line 164
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object p0

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    move-result-object v0

    .line 172
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 175
    move-result-object p0

    .line 176
    const-string v0, "Admin %d has changed password maximum character sequence length to %d"

    .line 178
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    move-result-object v7

    .line 182
    const/4 v2, 0x5

    .line 183
    const/4 v3, 0x1

    .line 184
    const/4 v4, 0x1

    .line 185
    const-string v6, "PasswordPolicy"

    .line 187
    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 190
    return-void

    .line 191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
