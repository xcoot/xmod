.class public final Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string v0, "android.intent.action.USER_REMOVED"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 22
    move-result-object p1

    .line 23
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$UserActivityReceiver;->this$0:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;

    .line 25
    iget-object p2, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 27
    if-eqz p2, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-static {p2, v1, v0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    .line 34
    move-result-object p1

    .line 35
    iget-object p0, p0, Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService;->mHandler:Lcom/android/server/knox/zt/networktrust/KnoxNetworkEventService$KnoxNwEventHandler;

    .line 37
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    :cond_0
    return-void
.end method
