.class public final synthetic Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:[B

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 6
    iput p2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    .line 12
    iput p5, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 14
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/enterprise/dualdar/DualDARPolicy;

    .line 3
    iget v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 7
    iget-object v3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$3:[B

    .line 9
    iget p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;->f$4:I

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-string v4, "Failed to reset password due to constraint violation: "

    .line 16
    new-instance v5, Lcom/android/internal/widget/LockPatternUtils;

    .line 18
    iget-object v6, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 20
    iget-object v6, v6, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    .line 28
    move-result v5

    .line 29
    const-string v6, "DualDARPolicy"

    .line 31
    const/4 v7, 0x0

    .line 32
    if-nez v5, :cond_0

    .line 34
    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted while device insecure"

    .line 37
    new-array v0, v7, [Ljava/lang/Object;

    .line 39
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 44
    goto/16 :goto_5

    .line 46
    :cond_0
    if-eqz v2, :cond_1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const-string v2, ""

    .line 51
    :goto_0
    invoke-static {v2}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    .line 54
    move-result v5

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 62
    move-result v8

    .line 63
    if-eqz v8, :cond_2

    .line 65
    const-string/jumbo p0, "resetPasswordWithTokenForInner : Not permitted for empty password"

    .line 68
    new-array v0, v7, [Ljava/lang/Object;

    .line 70
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    goto :goto_5

    .line 76
    :cond_2
    if-eqz v1, :cond_6

    .line 78
    if-eqz v5, :cond_3

    .line 80
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPin(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 83
    move-result-object v5

    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {v2}, Lcom/android/internal/widget/LockscreenCredential;->createPassword(Ljava/lang/CharSequence;)Lcom/android/internal/widget/LockscreenCredential;

    .line 88
    move-result-object v5

    .line 89
    :goto_1
    :try_start_0
    invoke-static {v1, v7, v5}, Landroid/app/admin/PasswordMetrics;->validateCredential(Landroid/app/admin/PasswordMetrics;ILcom/android/internal/widget/LockscreenCredential;)Ljava/util/List;

    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 96
    move-result v8

    .line 97
    if-nez v8, :cond_4

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p0

    .line 115
    new-array v0, v7, [Ljava/lang/Object;

    .line 117
    invoke-static {v6, p0, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    if-eqz v5, :cond_7

    .line 124
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 127
    goto :goto_5

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    goto :goto_2

    .line 130
    :cond_4
    if-eqz v5, :cond_6

    .line 132
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V

    .line 135
    goto :goto_4

    .line 136
    :goto_2
    if-eqz v5, :cond_5

    .line 138
    :try_start_1
    invoke-virtual {v5}, Lcom/android/internal/widget/LockscreenCredential;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 141
    goto :goto_3

    .line 142
    :catchall_1
    move-exception v0

    .line 143
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 146
    :cond_5
    :goto_3
    throw p0

    .line 147
    :cond_6
    :goto_4
    iget-object v0, v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    .line 149
    invoke-virtual {v0, v2, v3, p0}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    .line 152
    move-result p0

    .line 153
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 156
    move-result-object p0

    .line 157
    :cond_7
    :goto_5
    return-object p0
.end method
