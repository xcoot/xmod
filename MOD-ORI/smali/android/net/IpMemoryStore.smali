.class public Landroid/net/IpMemoryStore;
.super Landroid/net/IpMemoryStoreClient;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field private static final TAG:Ljava/lang/String; = "IpMemoryStore"


# instance fields
.field private final mService:Ljava/util/concurrent/CompletableFuture;

.field private final mTailNode:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static synthetic $r8$lambda$_y2cX-Xlq_pqq30pduKRh7dpuR8(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/net/IpMemoryStore;->lambda$runWhenServiceReady$0(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic $r8$lambda$sLhwK6AqadCj9D89Up2tTYl8kJk(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/net/IpMemoryStore;->lambda$runWhenServiceReady$1(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    .line 2
    .line 3
    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/net/IpMemoryStoreClient;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/net/IpMemoryStore;->mService:Ljava/util/concurrent/CompletableFuture;

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/net/IpMemoryStore;->getModuleNetworkStackClient(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroid/net/IpMemoryStore$1;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore$1;-><init>(Landroid/net/IpMemoryStore;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/net/networkstack/NetworkStackClientBase;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public static getMemoryStore(Landroid/content/Context;)Landroid/net/IpMemoryStore;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/IpMemoryStore;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic lambda$runWhenServiceReady$0(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object p0, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "Error fetching IpMemoryStore"

    .line 6
    .line 7
    invoke-static {p0, v0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    sget-object p2, Landroid/net/IpMemoryStore;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v1, "Exception occurred: "

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-static {p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    return-object p1
.end method

.method private static synthetic lambda$runWhenServiceReady$1(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;
    .locals 1

    .line 1
    new-instance v0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->handle(Ljava/util/function/BiFunction;)Ljava/util/concurrent/CompletableFuture;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public getModuleNetworkStackClient(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/net/networkstack/ModuleNetworkStackClient;->getInstance(Landroid/content/Context;)Landroid/net/networkstack/ModuleNetworkStackClient;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public runWhenServiceReady(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Landroid/net/IpMemoryStore;->mTailNode:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    new-instance v0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda0;

    .line 4
    .line 5
    invoke-direct {v0, p1}, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method
