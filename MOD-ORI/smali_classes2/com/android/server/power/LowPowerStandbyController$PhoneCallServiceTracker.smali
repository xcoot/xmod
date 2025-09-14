.class public final Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;
.super Landroid/app/IForegroundServiceObserver$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mRegistered:Z

.field public final mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/app/IForegroundServiceObserver$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mRegistered:Z

    .line 8
    .line 9
    new-instance p1, Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->mUidsWithPhoneCallService:Landroid/util/SparseBooleanArray;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onForegroundStateChanged(Landroid/os/IBinder;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/power/LowPowerStandbyController;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 16
    .line 17
    const/4 p3, 0x4

    .line 18
    const/4 p4, 0x0

    .line 19
    invoke-virtual {p2, p3, p1, p4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 24
    .line 25
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mHandler:Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController;->mClock:Lcom/android/server/power/LowPowerStandbyController$Clock;

    .line 28
    .line 29
    invoke-interface {p0}, Lcom/android/server/power/LowPowerStandbyController$Clock;->uptimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide p3

    .line 33
    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :catch_0
    return-void
.end method
