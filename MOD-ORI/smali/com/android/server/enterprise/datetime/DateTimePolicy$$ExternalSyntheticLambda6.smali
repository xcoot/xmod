.class public final synthetic Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

.field public final synthetic f$1:Landroid/app/admin/DevicePolicyManager;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;Landroid/app/admin/DevicePolicyManager;ZLcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$1:Landroid/app/admin/DevicePolicyManager;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$2:Z

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/knox/ContextInfo;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$1:Landroid/app/admin/DevicePolicyManager;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$2:Z

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$$ExternalSyntheticLambda6;->f$3:Lcom/samsung/android/knox/ContextInfo;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget-object v1, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "auto_time"

    .line 27
    .line 28
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v0, v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;->mContext:Landroid/content/Context;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v3, "auto_time_zone"

    .line 39
    .line 40
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    and-int/2addr v0, v1

    .line 45
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-static {p0}, Lcom/android/server/enterprise/utils/Utils;->getCallingOrCurrentUserId(Lcom/samsung/android/knox/ContextInfo;)I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v2, :cond_0

    .line 60
    .line 61
    const-string v0, "Admin %d has enabled automatic time."

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const-string v0, "Admin %d has disabled automatic time."

    .line 65
    .line 66
    :goto_0
    iget p0, p0, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 67
    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    const/4 v4, 0x5

    .line 81
    const/4 v5, 0x1

    .line 82
    const/4 v6, 0x1

    .line 83
    const-string v8, "DateTimePolicy"

    .line 84
    .line 85
    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return-object v3
.end method
