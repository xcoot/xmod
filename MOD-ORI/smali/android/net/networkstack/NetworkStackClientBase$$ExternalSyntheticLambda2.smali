.class public final synthetic Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/ip/IIpClientCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$1:Landroid/net/ip/IIpClientCallbacks;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda2;->f$1:Landroid/net/ip/IIpClientCallbacks;

    .line 4
    .line 5
    check-cast p1, Landroid/net/INetworkStackConnector;

    .line 6
    .line 7
    invoke-static {v0, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$48w_f5bE_-SHUizoPUm5Nk7I_rQ(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
