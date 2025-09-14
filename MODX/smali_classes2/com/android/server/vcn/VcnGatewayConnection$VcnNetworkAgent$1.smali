.class public final Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;
.super Landroid/net/NetworkAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field public final synthetic val$networkUnwantedCallback:Ljava/util/function/Consumer;

.field public final synthetic val$validationStatusCallback:Ljava/util/function/Consumer;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 4
    .line 5
    move-object/from16 v1, p9

    .line 6
    .line 7
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$networkUnwantedCallback:Ljava/util/function/Consumer;

    .line 8
    .line 9
    move-object/from16 v1, p10

    .line 10
    .line 11
    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$validationStatusCallback:Ljava/util/function/Consumer;

    .line 12
    .line 13
    const-string v3, "VcnGatewayConnection"

    .line 14
    .line 15
    move-object v1, p2

    .line 16
    move-object v2, p3

    .line 17
    move-object v4, p4

    .line 18
    move-object v5, p5

    .line 19
    move-object v6, p6

    .line 20
    move-object/from16 v7, p7

    .line 21
    .line 22
    move-object/from16 v8, p8

    .line 23
    .line 24
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final onNetworkUnwanted()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$networkUnwantedCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->this$0:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onValidationStatus(ILandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;->val$validationStatusCallback:Ljava/util/function/Consumer;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
