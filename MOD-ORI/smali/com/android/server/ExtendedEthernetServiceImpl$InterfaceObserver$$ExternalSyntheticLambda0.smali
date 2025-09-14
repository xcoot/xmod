.class public final synthetic Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

    .line 5
    .line 6
    iput-boolean p3, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;->f$2:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver$$ExternalSyntheticLambda0;->f$2:Z

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/ExtendedEthernetServiceImpl$InterfaceObserver;->this$0:Lcom/android/server/ExtendedEthernetServiceImpl;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    const-string p0, "Connected"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string p0, "Disconnected"

    .line 16
    .line 17
    :goto_0
    iget-object v1, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mLastIntentState:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    iput-object p0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mLastIntentState:Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v1, "samsung.net.ethernet.ETH_STATE_CHANGED"

    .line 28
    .line 29
    .line 30
    const/high16 v2, 0x4000000

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string/jumbo v2, "eth_state"

    .line 37
    .line 38
    .line 39
    iget-object v3, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mLastIntentState:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    const-string/jumbo v2, "com.android.settings"

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v2, "send intent: "

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    const-string v2, "ExtendedEthernetServiceImpl"

    .line 58
    .line 59
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    iget-object p0, v0, Lcom/android/server/ExtendedEthernetServiceImpl;->mContext:Landroid/content/Context;

    .line 63
    .line 64
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
