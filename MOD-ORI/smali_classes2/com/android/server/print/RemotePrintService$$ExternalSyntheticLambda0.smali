.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->stopTrackingAllPrinters()V

    .line 17
    .line 18
    .line 19
    iget-object p0, p1, Lcom/android/server/print/RemotePrintService;->mDiscoveryPriorityList:Ljava/util/List;

    .line 20
    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mHasPrinterDiscoverySession:Z

    .line 27
    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->ensureUnbound()V

    .line 34
    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    iput-boolean p0, p1, Lcom/android/server/print/RemotePrintService;->mDestroyed:Z

    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_2
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->handleBinderDied()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
