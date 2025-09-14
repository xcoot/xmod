.class public final synthetic Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 2

    .line 1
    iget v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Landroid/net/dhcp/DhcpServingParamsParcel;

    .line 10
    iget-object v1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 12
    check-cast v1, Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 14
    iget-object p0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 16
    invoke-static {p0, v0, v1, p1}, Landroid/net/NetworkStackClient;->$r8$lambda$Ba_AsipTQQ-hKyLsGAPLnsXM-L0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    .line 22
    check-cast v0, Landroid/net/Network;

    .line 24
    iget-object v1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Ljava/lang/String;

    .line 26
    iget-object p0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$2:Ljava/lang/Object;

    .line 28
    check-cast p0, Landroid/net/INetworkMonitorCallbacks;

    .line 30
    invoke-static {v0, v1, p0, p1}, Landroid/net/NetworkStackClient;->$r8$lambda$lTpfm7adJOl_gEmKBPGYh1wEYsk(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    .line 33
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
