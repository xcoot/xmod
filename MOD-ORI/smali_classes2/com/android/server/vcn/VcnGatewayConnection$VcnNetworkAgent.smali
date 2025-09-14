.class public Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;


# direct methods
.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;)V
    .locals 12

    .line 1
    move-object v0, p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 6
    .line 7
    iget-object v2, v0, Lcom/android/server/vcn/VcnContext;->mContext:Landroid/content/Context;

    .line 8
    .line 9
    iget-object v3, v0, Lcom/android/server/vcn/VcnContext;->mLooper:Landroid/os/Looper;

    .line 10
    .line 11
    move-object v0, v11

    .line 12
    move-object v1, p0

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move-object/from16 v6, p4

    .line 16
    .line 17
    move-object/from16 v7, p5

    .line 18
    .line 19
    move-object/from16 v8, p6

    .line 20
    .line 21
    move-object/from16 v9, p7

    .line 22
    .line 23
    move-object/from16 v10, p8

    .line 24
    .line 25
    invoke-direct/range {v0 .. v10}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase$$ExternalSyntheticLambda0;)V

    .line 26
    .line 27
    .line 28
    move-object v0, p0

    .line 29
    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->mImpl:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent$1;

    .line 30
    .line 31
    return-void
.end method
