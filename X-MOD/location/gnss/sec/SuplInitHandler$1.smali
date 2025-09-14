.class public final Lcom/android/server/location/gnss/sec/SuplInitHandler$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onAvailable(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-string p1, "SuplInitHandler"

    .line 3
    const-string/jumbo v0, "mEmergencyNetworkConnectivityCallback : onAvailable"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 11
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 13
    if-nez v0, :cond_1

    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 18
    iget-boolean v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsOpenUdpPort:Z

    .line 20
    if-nez v0, :cond_0

    .line 22
    const-string/jumbo v0, "start UDP socket"

    .line 25
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p1, Ljava/lang/Thread;

    .line 30
    new-instance v0, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;

    .line 32
    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string p0, "UDP port is already opened."

    .line 44
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_1
    :goto_0
    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    const-string p1, "SuplInitHandler"

    .line 3
    const-string/jumbo v0, "mEmergencyNetworkConnectivityCallback : onLost"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 14
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 27
    iget-object p1, p1, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 29
    invoke-virtual {p1}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanSoftbank()Z

    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 37
    invoke-static {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->-$$Nest$msetSalesCodeFromCscFeature(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    .line 40
    :cond_0
    return-void
.end method

.method public final onUnavailable()V
    .locals 2

    .line 1
    const-string v0, "SuplInitHandler"

    .line 3
    const-string/jumbo v1, "mEmergencyNetworkConnectivityCallback : onUnavailable"

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mIsUdpListen:Z

    .line 14
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mGnssVendorConfig:Lcom/android/server/location/gnss/sec/GnssVendorConfig;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    invoke-static {}, Lcom/android/server/location/gnss/sec/GnssVendorConfig;->isIzatServiceEnabled()Z

    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 27
    iget-object v0, v0, Lcom/android/server/location/gnss/sec/SuplInitHandler;->mCarrierConfig:Lcom/android/server/location/gnss/sec/CarrierConfig;

    .line 29
    invoke-virtual {v0}, Lcom/android/server/location/gnss/sec/CarrierConfig;->isJapanSoftbank()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/SuplInitHandler$1;->this$0:Lcom/android/server/location/gnss/sec/SuplInitHandler;

    .line 37
    invoke-static {p0}, Lcom/android/server/location/gnss/sec/SuplInitHandler;->-$$Nest$msetSalesCodeFromCscFeature(Lcom/android/server/location/gnss/sec/SuplInitHandler;)V

    .line 40
    :cond_0
    return-void
.end method
