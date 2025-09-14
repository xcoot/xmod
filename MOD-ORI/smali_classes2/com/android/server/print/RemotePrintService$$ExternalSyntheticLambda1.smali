.class public final synthetic Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/print/RemotePrintService$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    check-cast p1, Lcom/android/server/print/RemotePrintService;

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p2, Landroid/print/PrinterId;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p2, Landroid/print/PrinterId;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p2, Ljava/util/List;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleStartPrinterDiscovery(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_2
    check-cast p2, Landroid/print/PrintJobInfo;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :pswitch_3
    check-cast p2, Landroid/print/PrintJobInfo;

    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleOnPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_4
    check-cast p2, Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleValidatePrinters(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_5
    check-cast p2, Landroid/print/PrinterId;

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Lcom/android/server/print/RemotePrintService;->handleRequestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
