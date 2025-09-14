.class public final Lcom/android/server/print/RemotePrintService$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/print/RemotePrintService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintService$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleStopPrinterDiscovery()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleDestroyPrinterDiscoverySession()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_1
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$1;->this$0:Lcom/android/server/print/RemotePrintService;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintService;->handleOnAllPrintJobsHandled()V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
