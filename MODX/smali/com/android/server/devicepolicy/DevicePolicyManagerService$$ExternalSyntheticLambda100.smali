.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$1:Landroid/content/ComponentName;

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$2:I

    .line 10
    iput-wide p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$3:J

    .line 12
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$1:Landroid/content/ComponentName;

    .line 5
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$2:I

    .line 7
    iget-wide v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda100;->f$3:J

    .line 9
    const/4 p0, 0x0

    .line 10
    invoke-virtual {v0, p0, v2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getActiveAdminForCallerLockedMDM(IILandroid/content/ComponentName;)Lcom/android/server/devicepolicy/ActiveAdmin;

    .line 13
    move-result-object v1

    .line 14
    const-wide/16 v5, 0x0

    .line 16
    cmp-long v7, v3, v5

    .line 18
    if-lez v7, :cond_0

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v5

    .line 24
    add-long/2addr v5, v3

    .line 25
    :cond_0
    iput-wide v5, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationDate:J

    .line 27
    iput-wide v3, v1, Lcom/android/server/devicepolicy/ActiveAdmin;->passwordExpirationTimeout:J

    .line 29
    if-lez v7, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v3, "semSetPasswordExpirationTimeout(): password will expire on "

    .line 36
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v3, 0x2

    .line 40
    invoke-static {v3, v3}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    .line 43
    move-result-object v3

    .line 44
    new-instance v4, Ljava/util/Date;

    .line 46
    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 49
    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    const-string v3, "DevicePolicyManager"

    .line 62
    invoke-static {v3, v1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1
    invoke-virtual {v0, v2, p0, p0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->saveSettingsLocked(IZZZ)V

    .line 68
    iget-object v1, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->setExpirationAlarmCheckLocked(Landroid/content/Context;IZ)V

    .line 73
    return-void
.end method
