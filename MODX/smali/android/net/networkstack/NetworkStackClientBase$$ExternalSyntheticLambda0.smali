.class public final synthetic Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/net/Network;

    .line 10
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 14
    check-cast p0, Landroid/net/INetworkMonitorCallbacks;

    .line 16
    check-cast p1, Landroid/net/INetworkStackConnector;

    .line 18
    invoke-static {v0, v1, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$o_PdOWRUuao3JqvKE8gTlhXzpWQ(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 21
    return-void

    .line 22
    :pswitch_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 26
    check-cast v1, Landroid/net/dhcp/DhcpServingParamsParcel;

    .line 28
    iget-object p0, p0, Landroid/net/networkstack/NetworkStackClientBase$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 30
    check-cast p0, Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 32
    check-cast p1, Landroid/net/INetworkStackConnector;

    .line 34
    invoke-static {v0, v1, p0, p1}, Landroid/net/networkstack/NetworkStackClientBase;->$r8$lambda$W7vPNax4FJkXUNCRAsG5q0i5siM(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 37
    return-void

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
