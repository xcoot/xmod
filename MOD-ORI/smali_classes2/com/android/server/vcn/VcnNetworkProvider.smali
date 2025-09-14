.class public final Lcom/android/server/vcn/VcnNetworkProvider;
.super Landroid/net/NetworkProvider;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

.field public final mHandler:Landroid/os/Handler;

.field public final mListeners:Ljava/util/Set;

.field public final mRequests:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/android/server/vcn/VcnNetworkProvider;

    .line 2
    .line 3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;)V
    .locals 1

    .line 1
    const-string v0, "Missing context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-object v0, p1

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    const-string v0, "Missing looper"

    .line 10
    .line 11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-object v0, p2

    .line 15
    check-cast v0, Landroid/os/Looper;

    .line 16
    .line 17
    const-string v0, "VcnNetworkProvider"

    .line 18
    .line 19
    invoke-direct {p0, p1, p2, v0}, Landroid/net/NetworkProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Landroid/util/ArraySet;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 28
    .line 29
    new-instance v0, Landroid/util/ArraySet;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mContext:Landroid/content/Context;

    .line 37
    .line 38
    new-instance p1, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mHandler:Landroid/os/Handler;

    .line 44
    .line 45
    const-string p1, "Missing dependencies"

    .line 46
    .line 47
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mDeps:Lcom/android/server/vcn/VcnNetworkProvider$Dependencies;

    .line 51
    .line 52
    return-void
.end method


# virtual methods
.method public registerListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 2
    .line 3
    check-cast v0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnNetworkProvider;->resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public resendAllRequests(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mRequests:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/net/NetworkRequest;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    check-cast v1, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v2, "Missing request"

    .line 28
    .line 29
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget-object v1, v1, Lcom/android/server/vcn/Vcn$VcnNetworkRequestListener;->this$0:Lcom/android/server/vcn/Vcn;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/android/server/vcn/VcnNetworkProvider$NetworkRequestListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnNetworkProvider;->mListeners:Ljava/util/Set;

    .line 2
    .line 3
    check-cast p0, Landroid/util/ArraySet;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
