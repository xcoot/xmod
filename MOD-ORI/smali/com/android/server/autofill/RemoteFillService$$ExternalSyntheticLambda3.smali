.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/FillRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v6, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$1:Landroid/service/autofill/FillRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda3;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    .line 10
    .line 11
    sget p0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 12
    .line 13
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-boolean p0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 17
    .line 18
    if-eqz p0, :cond_0

    .line 19
    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string/jumbo v0, "calling onFillRequest() for id="

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7}, Landroid/service/autofill/FillRequest;->getId()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v0, "RemoteFillService"

    .line 40
    .line 41
    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :cond_0
    new-instance p0, Ljava/util/concurrent/CompletableFuture;

    .line 45
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v8, Lcom/android/server/autofill/RemoteFillService$1;

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    move-object v0, v8

    .line 53
    move-object v1, v6

    .line 54
    move-object v4, p0

    .line 55
    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v6, v8}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-interface {p1, v7, v0}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    .line 63
    .line 64
    .line 65
    return-object p0
.end method
