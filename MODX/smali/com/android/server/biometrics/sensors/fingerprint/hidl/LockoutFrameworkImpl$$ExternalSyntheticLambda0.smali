.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 6
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;

    .line 3
    iget p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl$$ExternalSyntheticLambda0;->f$1:I

    .line 5
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mAlarmManager:Landroid/app/AlarmManager;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    move-result-wide v2

    .line 11
    const-wide/16 v4, 0x7530

    .line 13
    add-long/2addr v2, v4

    .line 14
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/LockoutFrameworkImpl;->mLockoutResetIntent:Ljava/util/function/Function;

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/app/PendingIntent;

    .line 26
    const/4 v0, 0x2

    .line 27
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 30
    return-void
.end method
