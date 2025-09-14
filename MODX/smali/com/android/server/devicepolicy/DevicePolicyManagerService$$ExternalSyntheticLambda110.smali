.class public final synthetic Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;ZILandroid/content/Context;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 6
    iput-boolean p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$1:Z

    .line 8
    iput p3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$2:I

    .line 10
    iput-object p4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$3:Landroid/content/Context;

    .line 12
    iput-wide p5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$4:J

    .line 14
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 3
    iget-boolean v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$1:Z

    .line 5
    iget v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$2:I

    .line 7
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$3:Landroid/content/Context;

    .line 9
    iget-wide v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$$ExternalSyntheticLambda110;->f$4:J

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getProfileParentId(I)I

    .line 16
    move-result v2

    .line 17
    :cond_0
    iget-object p0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 19
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 21
    const-class v0, Landroid/app/AlarmManager;

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Landroid/app/AlarmManager;

    .line 29
    new-instance v0, Landroid/content/Intent;

    .line 31
    const-string/jumbo v1, "com.android.server.ACTION_EXPIRED_PASSWORD_NOTIFICATION"

    .line 34
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 40
    move-result-object v1

    .line 41
    const/16 v2, 0x15c3

    .line 43
    const/high16 v6, 0x4c000000    # 3.3554432E7f

    .line 45
    invoke-static {v3, v2, v0, v6, v1}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 52
    const-wide/16 v1, 0x0

    .line 54
    cmp-long v1, v4, v1

    .line 56
    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {p0, v1, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 62
    :cond_1
    return-void
.end method
