.class public final synthetic Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/autofill/RemoteFillService;

    .line 3
    check-cast p1, Landroid/content/IntentSender;

    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 7
    sget v0, Lcom/android/server/autofill/RemoteFillService;->$r8$clinit:I

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;

    .line 18
    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/RemoteFillService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    .line 21
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void
.end method
