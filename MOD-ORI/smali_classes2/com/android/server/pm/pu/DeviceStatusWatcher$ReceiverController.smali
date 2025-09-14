.class public final Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mShutdownFilter:Landroid/content/IntentFilter;

.field public final mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

.field public final mStatusFilter:Landroid/content/IntentFilter;

.field public final mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

.field public final synthetic this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/pu/DeviceStatusWatcher;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->this$0:Lcom/android/server/pm/pu/DeviceStatusWatcher;

    .line 5
    .line 6
    new-instance p1, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownFilter:Landroid/content/IntentFilter;

    .line 14
    .line 15
    new-instance p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mShutdownReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;-><init>(Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusReceiver:Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController$1;

    .line 30
    .line 31
    new-instance p1, Landroid/content/IntentFilter;

    .line 32
    .line 33
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/pm/pu/DeviceStatusWatcher$ReceiverController;->mStatusFilter:Landroid/content/IntentFilter;

    .line 37
    .line 38
    const-string p0, "android.intent.action.SCREEN_ON"

    .line 39
    .line 40
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 41
    .line 42
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 43
    .line 44
    const-string v2, "android.intent.action.USER_UNLOCKED"

    .line 45
    .line 46
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(Landroid/content/IntentFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const-string p0, "android.intent.action.BATTERY_CHANGED"

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
