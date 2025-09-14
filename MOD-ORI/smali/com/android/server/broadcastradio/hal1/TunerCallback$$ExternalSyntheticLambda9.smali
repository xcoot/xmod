.class public final synthetic Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/broadcastradio/hal1/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal1/TunerCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/broadcastradio/hal1/TunerCallback;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/broadcastradio/hal1/TunerCallback$$ExternalSyntheticLambda9;->f$1:I

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/hal1/TunerCallback;->lambda$onError$0(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
