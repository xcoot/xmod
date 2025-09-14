.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/FillRequest;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$4:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$1:Landroid/service/autofill/FillRequest;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v6, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 2
    .line 3
    iget-object v7, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$1:Landroid/service/autofill/FillRequest;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda5;->f$4:Landroid/os/IBinder;

    .line 10
    .line 11
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    .line 12
    .line 13
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 14
    .line 15
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string/jumbo v1, "calling onFillRequest() for id="

    .line 25
    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v7}, Landroid/service/autofill/FillRequest;->getId()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "RemoteFillService"

    .line 42
    .line 43
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    :cond_0
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    .line 47
    .line 48
    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v9, Lcom/android/server/autofill/RemoteFillService$1;

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v0, v9

    .line 55
    move-object v1, v6

    .line 56
    move-object v4, v8

    .line 57
    invoke-direct/range {v0 .. v5}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v9}, Lcom/android/server/autofill/RemoteFillService;->maybeWrapWithWeakReference(Landroid/service/autofill/IFillCallback;)Landroid/service/autofill/IFillCallback;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {p1, v7, v0, p0}, Landroid/service/autofill/IAutoFillService;->onFillCredentialRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;Landroid/os/IBinder;)V

    .line 65
    .line 66
    .line 67
    return-object v8
.end method
