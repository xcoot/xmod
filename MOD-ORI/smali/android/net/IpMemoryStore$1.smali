.class public final Landroid/net/IpMemoryStore$1;
.super Landroid/net/IIpMemoryStoreCallbacks$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Landroid/net/IpMemoryStore;


# direct methods
.method public constructor <init>(Landroid/net/IpMemoryStore;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/IIpMemoryStoreCallbacks$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1
    const-string/jumbo p0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public final getInterfaceVersion()I
    .locals 0

    .line 1
    const/16 p0, 0xa

    .line 2
    .line 3
    return p0
.end method

.method public final onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/IpMemoryStore$1;->this$0:Landroid/net/IpMemoryStore;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/net/IpMemoryStore;->-$$Nest$fgetmService(Landroid/net/IpMemoryStore;)Ljava/util/concurrent/CompletableFuture;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
