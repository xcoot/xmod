.class public final synthetic Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/chimera/SystemRepository$ChimeraProcessObserver;


# instance fields
.field public final synthetic f$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemEventListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemEventListener;

    .line 6
    return-void
.end method


# virtual methods
.method public final onForegroundActivitiesChanged(IIZI[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/chimera/SystemEventListener;

    .line 3
    if-eqz p3, :cond_1

    .line 5
    const/4 p1, 0x5

    .line 6
    if-eqz p6, :cond_0

    .line 8
    iget-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 10
    invoke-virtual {p3, p1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 13
    move-result p3

    .line 14
    if-nez p3, :cond_2

    .line 16
    iget-object p3, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object p2

    .line 22
    invoke-static {p3, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 25
    move-result-object p1

    .line 26
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 28
    const-wide/16 p2, 0x7d0

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 36
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object p1, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 41
    const/16 p2, 0x9

    .line 43
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 46
    move-result-object p1

    .line 47
    const/4 p2, 0x0

    .line 48
    aget-object p2, p5, p2

    .line 50
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener;->mHandler:Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    .line 54
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    :cond_2
    :goto_0
    return-void
.end method
