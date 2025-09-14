.class public final synthetic Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/UnaryOperator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    iput-object p2, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/UnaryOperator;

    .line 8
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$$ExternalSyntheticLambda2;->f$1:Ljava/util/function/UnaryOperator;

    .line 5
    check-cast p1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 7
    iget-object v1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 12
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 14
    invoke-interface {p0, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;

    .line 29
    iget-object p1, p1, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/provider/AbstractLocationProvider$Listener;

    .line 31
    invoke-direct {v0, p1, p0}, Lcom/android/server/location/provider/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    .line 34
    move-object p1, v0

    .line 35
    :goto_0
    return-object p1
.end method
