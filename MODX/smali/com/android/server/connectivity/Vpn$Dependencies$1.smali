.class public final Lcom/android/server/connectivity/Vpn$Dependencies$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/DnsResolver$Callback;


# instance fields
.field public final synthetic val$endpoint:Ljava/lang/String;

.field public final synthetic val$result:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CompletableFuture;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 6
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final onAnswer(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result p2

    .line 7
    if-lez p2, :cond_0

    .line 9
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Ljava/net/InetAddress;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 24
    new-instance p2, Ljava/net/UnknownHostException;

    .line 26
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 28
    invoke-direct {p2, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 34
    :goto_0
    return-void
.end method

.method public final onError(Landroid/net/DnsResolver$DnsException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Async dns resolver error : "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "Vpn"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$result:Ljava/util/concurrent/CompletableFuture;

    .line 22
    new-instance v0, Ljava/net/UnknownHostException;

    .line 24
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$Dependencies$1;->val$endpoint:Ljava/lang/String;

    .line 26
    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 32
    return-void
.end method
