.class public Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;
.super Landroid/net/NetworkAgent;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner$$ExternalSyntheticLambda4;)V
    .locals 9

    .line 1
    const-string v3, "VPN"

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v4, p3

    .line 7
    move-object v5, p4

    .line 8
    move-object v6, p5

    .line 9
    move-object v7, p6

    .line 10
    move-object/from16 v8, p7

    .line 12
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    .line 15
    move-object/from16 v1, p8

    .line 17
    iput-object v1, v0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    .line 19
    return-void
.end method


# virtual methods
.method public final onNetworkUnwanted()V
    .locals 0

    .line 1
    return-void
.end method

.method public final onValidationStatus(ILandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$VpnNetworkAgentWrapper;->mCallback:Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;

    .line 3
    if-eqz p0, :cond_0

    .line 5
    invoke-interface {p0, p1}, Lcom/android/server/connectivity/Vpn$ValidationStatusCallback;->onValidationStatus(I)V

    .line 8
    :cond_0
    return-void
.end method
