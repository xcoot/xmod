.class public final synthetic Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/net/IpMemoryStore$$ExternalSyntheticLambda1;->f$0:Ljava/util/function/Consumer;

    .line 2
    .line 3
    check-cast p1, Landroid/net/IIpMemoryStore;

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Throwable;

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, Landroid/net/IpMemoryStore;->$r8$lambda$_y2cX-Xlq_pqq30pduKRh7dpuR8(Ljava/util/function/Consumer;Landroid/net/IIpMemoryStore;Ljava/lang/Throwable;)Landroid/net/IIpMemoryStore;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method
