.class public final Lcom/android/server/input/KeyboardLedController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/KeyboardLedController;


# direct methods
.method public constructor <init>(Lcom/android/server/input/KeyboardLedController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

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
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    const/4 p2, 0x2

    .line 6
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController$1;->this$0:Lcom/android/server/input/KeyboardLedController;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/server/input/KeyboardLedController;->mHandler:Landroid/os/Handler;

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
