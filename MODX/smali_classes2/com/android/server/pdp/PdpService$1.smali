.class public final Lcom/android/server/pdp/PdpService$1;
.super Landroid/os/HandlerThread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pdp/PdpService;


# direct methods
.method public constructor <init>(Lcom/android/server/pdp/PdpService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    .line 2
    .line 3
    const-string/jumbo p1, "mSvcPdpThread"

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onLooperPrepared()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    .line 2
    .line 3
    new-instance v1, Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/pdp/PdpService$1;->this$0:Lcom/android/server/pdp/PdpService;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/server/pdp/PdpService;->mSvcPdpThread:Lcom/android/server/pdp/PdpService$1;

    .line 8
    .line 9
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, p0, v2}, Lcom/android/server/pdp/PdpService$SvcPdpHandler;-><init>(Lcom/android/server/pdp/PdpService;Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/android/server/pdp/PdpService;->mSvcPdpHandler:Lcom/android/server/pdp/PdpService$SvcPdpHandler;

    .line 17
    .line 18
    return-void
.end method
