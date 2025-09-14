.class public final Lcom/android/server/job/controllers/QuotaController$QcUidObserver;
.super Landroid/app/UidObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3
    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onUidStateChanged(IIJI)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;->this$0:Lcom/android/server/job/controllers/QuotaController;

    .line 3
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController;->mHandler:Lcom/android/server/job/controllers/QuotaController$QcHandler;

    .line 5
    const/4 p3, 0x3

    .line 6
    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 13
    return-void
.end method
