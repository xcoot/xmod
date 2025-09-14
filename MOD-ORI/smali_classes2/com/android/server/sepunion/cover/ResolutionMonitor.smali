.class public final Lcom/android/server/sepunion/cover/ResolutionMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackRunnable:Ljava/lang/Runnable;

.field public mConfiguration:Landroid/content/res/Configuration;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Landroid/os/Handler;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mHandler:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mCallbackRunnable:Ljava/lang/Runnable;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/android/server/sepunion/cover/ResolutionMonitor;->mConfiguration:Landroid/content/res/Configuration;

    .line 24
    .line 25
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 26
    .line 27
    invoke-static {p2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance p3, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;

    .line 32
    .line 33
    invoke-direct {p3, p0}, Lcom/android/server/sepunion/cover/ResolutionMonitor$1;-><init>(Lcom/android/server/sepunion/cover/ResolutionMonitor;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    return-void
.end method
