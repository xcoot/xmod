.class public final Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;
.super Landroid/print/IPrintSpoolerCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 7
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;B)V
    .locals 0

    const/4 p2, 0x1

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 11
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 12
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;BB)V
    .locals 0

    const/4 p2, 0x6

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 5
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;BZ)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 9
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 10
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;C)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 13
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 14
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V
    .locals 0

    const/4 p2, 0x3

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;S)V
    .locals 0

    const/4 p2, 0x4

    iput p2, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Landroid/print/IPrintSpoolerCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public customPrinterIconCacheCleared(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$500(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final customPrinterIconCacheCleared$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onCancelPrintJobResult(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCustomPrinterIconCached(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$400(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final onCustomPrinterIconCached$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onGetCustomPrinterIconResult(Landroid/graphics/drawable/Icon;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$600(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final onGetCustomPrinterIconResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Landroid/graphics/drawable/Icon;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onGetPrintJobInfoResult(Landroid/print/PrintJobInfo;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$100(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final onGetPrintJobInfoResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Landroid/print/PrintJobInfo;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onGetPrintJobInfosResult(Ljava/util/List;I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$000(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final onGetPrintJobInfosResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(Ljava/util/List;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSetPrintJobStateResult(ZI)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$200(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final onSetPrintJobStateResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSetPrintJobTagResult(ZI)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller$1;->this$0:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p0, p1, p2}, Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;->access$300(Lcom/android/server/print/RemotePrintSpooler$SetPrintJobTagCaller;Ljava/lang/Object;I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onSetPrintJobTagResult$com$android$server$print$RemotePrintSpooler$BasePrintSpoolerServiceCallbacks(ZI)V
    .locals 0

    .line 1
    return-void
.end method
