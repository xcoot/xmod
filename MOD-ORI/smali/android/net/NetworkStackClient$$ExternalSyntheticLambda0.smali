.class public final synthetic Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


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
    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$1:Landroid/net/ip/IIpClientCallbacks;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$1:Landroid/net/ip/IIpClientCallbacks;

    .line 4
    .line 5
    invoke-static {v0, p0, p1}, Landroid/net/NetworkStackClient;->$r8$lambda$GmFOZAoaRNbtlKNkgJ53jvx1I8E(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
