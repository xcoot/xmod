.class public abstract Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public mIsQueued:Z

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 8
    .line 9
    iput p2, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract handleAlarm()V
.end method

.method public final onAlarm()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mIsQueued:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->handleAlarm()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 10
    .line 11
    iget v1, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isTrustAllowedForUser(I)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-boolean v0, Lcom/android/server/trust/TrustManagerService;->DEBUG:Z

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v0, "TrustManagerService"

    .line 24
    .line 25
    const-string v1, "Revoking all trust because of trust timeout"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->this$0:Lcom/android/server/trust/TrustManagerService;

    .line 31
    .line 32
    iget-object v1, v0, Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mStrongAuthTracker:Lcom/android/server/trust/TrustManagerService$StrongAuthTracker;

    .line 35
    .line 36
    const/16 v0, 0x100

    .line 37
    .line 38
    iget p0, p0, Lcom/android/server/trust/TrustManagerService$TrustTimeoutAlarmListener;->mUserId:I

    .line 39
    .line 40
    invoke-virtual {v1, v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
