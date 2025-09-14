.class public final Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mContext:Landroid/content/Context;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 19
    .line 20
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const/4 p3, 0x0

    .line 23
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    .line 29
    .line 30
    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    .line 31
    .line 32
    .line 33
    new-instance p0, Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string p3, "android.intent.action.SCREEN_OFF"

    .line 36
    .line 37
    invoke-direct {p0, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    const p1, 0x10e014f

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public static dismissDialog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Dismissing dialog with reason: "

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "SideFpsEventHandler"

    .line 8
    .line 9
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    .line 3
    const/4 p1, 0x4

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
