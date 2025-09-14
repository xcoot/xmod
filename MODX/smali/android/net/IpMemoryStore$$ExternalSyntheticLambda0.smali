.class public final synthetic Landroid/net/IpMemoryStore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Consumer;

    .line 3
    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    .line 5
    invoke-static {p0, p1}, Landroid/net/IpMemoryStore;->$r8$lambda$sLhwK6AqadCj9D89Up2tTYl8kJk(Ljava/util/function/Consumer;Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
