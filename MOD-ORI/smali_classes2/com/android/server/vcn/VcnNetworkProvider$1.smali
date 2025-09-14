.class public final Lcom/android/server/vcn/VcnNetworkProvider$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/NetworkProvider$NetworkOfferCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnNetworkProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnNetworkProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/vcn/VcnNetworkProvider$1;->this$0:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onNetworkNeeded(Landroid/net/NetworkRequest;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider$1;->this$0:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 4
    .line 5
    check-cast v0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 11
    .line 12
    check-cast p0, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;

    .line 29
    .line 30
    check-cast v0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    const-string v1, "Missing request"

    .line 36
    .line 37
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method public final onNetworkUnneeded(Landroid/net/NetworkRequest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider$1;->this$0:Lcom/android/server/vcn/VcnNetworkProvider;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 4
    .line 5
    check-cast p0, Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
