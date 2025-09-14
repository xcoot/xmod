.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Ljava/lang/Throwable;

.field public final synthetic f$2:Landroid/service/autofill/FillRequest;

.field public final synthetic f$3:Landroid/service/autofill/FillResponse;

.field public final synthetic f$4:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Throwable;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$2:Landroid/service/autofill/FillRequest;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$3:Landroid/service/autofill/FillResponse;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Throwable;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$2:Landroid/service/autofill/FillRequest;

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$3:Landroid/service/autofill/FillResponse;

    .line 13
    .line 14
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/autofill/RemoteFillService;->$r8$lambda$PXtmzf6bY2FCvCgDzGBClXL04mI(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$1:Ljava/lang/Throwable;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$2:Landroid/service/autofill/FillRequest;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$3:Landroid/service/autofill/FillResponse;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;->f$4:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/autofill/RemoteFillService;->$r8$lambda$BpMSr5I3_9bplEhls6FgDTRLWpg(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
