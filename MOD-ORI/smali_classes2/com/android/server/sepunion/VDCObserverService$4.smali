.class public final Lcom/android/server/sepunion/VDCObserverService$4;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 5
    .line 6
    iget-object p1, p1, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 7
    .line 8
    const/16 p2, 0x1e

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$4;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService;->mHandler:Lcom/android/server/sepunion/VDCObserverService$MyHandler;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
