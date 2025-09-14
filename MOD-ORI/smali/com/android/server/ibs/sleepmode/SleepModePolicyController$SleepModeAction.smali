.class public final Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

.field public final mContext:Landroid/content/Context;

.field public final masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

.field public final synthetic this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

.field public final wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->this$0:Lcom/android/server/ibs/sleepmode/SleepModePolicyController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->psmCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 15
    .line 16
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 17
    .line 18
    invoke-direct {p1, p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->gpsCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 22
    .line 23
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p1, p0, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->wifiCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$2;

    .line 30
    .line 31
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 32
    .line 33
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->btCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 37
    .line 38
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->nearbyCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 45
    .line 46
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 47
    .line 48
    const/4 v0, 0x3

    .line 49
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->masterSyncCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 53
    .line 54
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 55
    .line 56
    const/4 v0, 0x4

    .line 57
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->notificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 61
    .line 62
    new-instance p1, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-direct {p1, p0, p2, v0}, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;-><init>(Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    iput-object p1, p0, Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction;->cameraFlashNotificationCallBack:Lcom/android/server/ibs/sleepmode/SleepModePolicyController$SleepModeAction$1;

    .line 69
    .line 70
    return-void
.end method
