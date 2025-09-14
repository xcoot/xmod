.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;

.field public final synthetic f$1:Landroid/service/autofill/SaveRequest;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;->f$1:Landroid/service/autofill/SaveRequest;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda9;->f$1:Landroid/service/autofill/SaveRequest;

    .line 4
    .line 5
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    .line 6
    .line 7
    invoke-static {v0, p0, p1}, Lcom/android/server/autofill/RemoteFillService;->$r8$lambda$0drfjd02UtjtR1pzZwZfvLOqncQ(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
