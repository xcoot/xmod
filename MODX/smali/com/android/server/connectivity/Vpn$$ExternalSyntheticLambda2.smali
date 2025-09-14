.class public final synthetic Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/connectivity/Vpn;

    .line 6
    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/connectivity/Vpn;

    .line 3
    sget-object v0, Lcom/android/server/connectivity/Vpn;->IKEV2_VPN_RETRY_DELAYS_MS:[J

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 10
    invoke-virtual {v0}, Landroid/net/NetworkAgent;->register()Landroid/net/Network;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-void

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 18
    throw v0
.end method
