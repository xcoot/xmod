.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$1:Landroid/service/autofill/FillRequest;

    .line 7
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget v1, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 8
    iget-object v3, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 10
    iget-object v5, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$1:Landroid/service/autofill/FillRequest;

    .line 12
    iget-object v7, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 14
    move-object/from16 v6, p1

    .line 16
    check-cast v6, Landroid/service/autofill/FillResponse;

    .line 18
    move-object/from16 v4, p2

    .line 20
    check-cast v4, Ljava/lang/Throwable;

    .line 22
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;

    .line 33
    const/4 v8, 0x0

    .line 34
    move-object v2, v1

    .line 35
    invoke-direct/range {v2 .. v8}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 38
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    return-void

    .line 42
    :pswitch_0
    iget-object v10, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 44
    iget-object v12, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$1:Landroid/service/autofill/FillRequest;

    .line 46
    iget-object v14, v0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda4;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 48
    move-object/from16 v13, p1

    .line 50
    check-cast v13, Landroid/service/autofill/FillResponse;

    .line 52
    move-object/from16 v11, p2

    .line 54
    check-cast v11, Ljava/lang/Throwable;

    .line 56
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 58
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;

    .line 67
    const/4 v15, 0x1

    .line 68
    move-object v9, v1

    .line 69
    invoke-direct/range {v9 .. v15}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;I)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
