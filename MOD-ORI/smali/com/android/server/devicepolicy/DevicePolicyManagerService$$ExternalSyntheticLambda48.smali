.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Lcom/android/server/devicepolicy/CallerIdentity;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J

.field public final synthetic f$6:Z

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/CallerIdentity;Ljava/lang/String;JJJZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$2:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$3:J

    .line 11
    .line 12
    iput-wide p6, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$4:J

    .line 13
    .line 14
    iput-wide p8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$5:J

    .line 15
    .line 16
    iput-boolean p10, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$6:Z

    .line 17
    .line 18
    iput p11, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$7:I

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getOrThrow()Ljava/lang/Object;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$1:Lcom/android/server/devicepolicy/CallerIdentity;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$2:Ljava/lang/String;

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$3:J

    .line 8
    .line 9
    iget-wide v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$4:J

    .line 10
    .line 11
    iget-wide v7, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$5:J

    .line 12
    .line 13
    iget-boolean v9, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$6:Z

    .line 14
    .line 15
    iget p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda48;->f$7:I

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    iget v1, v1, Lcom/android/server/devicepolicy/CallerIdentity;->mUid:I

    .line 21
    .line 22
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getManagedUserId(I)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-gez v1, :cond_0

    .line 31
    .line 32
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    const-string v11, "DevicePolicyManager"

    .line 40
    .line 41
    if-nez v10, :cond_1

    .line 42
    .line 43
    const-string p0, "Package %s is not allowed to access cross-profile calendar APIs"

    .line 44
    .line 45
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v11, p0, v0}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v10, Landroid/content/Intent;

    .line 56
    .line 57
    const-string v12, "android.provider.calendar.action.VIEW_MANAGED_PROFILE_CALENDAR_EVENT"

    .line 58
    .line 59
    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v10, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "id"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v10, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    const-string v2, "beginTime"

    .line 72
    .line 73
    invoke-virtual {v10, v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    .line 75
    .line 76
    const-string/jumbo v2, "endTime"

    .line 77
    .line 78
    .line 79
    invoke-virtual {v10, v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    const-string v2, "allDay"

    .line 83
    .line 84
    invoke-virtual {v10, v2, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v10, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    :try_start_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 91
    .line 92
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {p0, v10, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception p0

    .line 103
    const-string v0, "View event activity not found"

    .line 104
    .line 105
    invoke-static {v11, v0, p0}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    :goto_0
    return-object p0
.end method
