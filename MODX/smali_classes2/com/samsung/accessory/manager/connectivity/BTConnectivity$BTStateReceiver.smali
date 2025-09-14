.class public final Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/connectivity/BTConnectivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$BTStateReceiver;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity;->mAdapterStateChangedHandler:Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 21
    .line 22
    const/high16 v0, -0x80000000

    .line 23
    .line 24
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/16 p2, 0xa

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/BTConnectivity$AdapterStateChangedHandler;->this$0:Lcom/samsung/accessory/manager/connectivity/BTConnectivity;

    .line 31
    .line 32
    if-eq p1, p2, :cond_1

    .line 33
    .line 34
    const/16 p2, 0xc

    .line 35
    .line 36
    if-eq p1, p2, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onStateChanged(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p0, p0, Lcom/samsung/accessory/manager/connectivity/Connectivity;->mStateChangedCallback:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;

    .line 47
    .line 48
    const/4 p1, 0x2

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->onStateChanged(I)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
