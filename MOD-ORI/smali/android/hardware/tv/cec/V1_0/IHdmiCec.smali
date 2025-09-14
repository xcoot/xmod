.class public interface abstract Landroid/hardware/tv/cec/V1_0/IHdmiCec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static getService()Landroid/hardware/tv/cec/V1_0/IHdmiCec;
    .locals 5

    .line 1
    const-string/jumbo v0, "default"

    .line 2
    .line 3
    .line 4
    const-string v1, "android.hardware.tv.cec@1.0::IHdmiCec"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v0, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    instance-of v4, v3, Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    move-object v2, v3

    .line 26
    check-cast v2, Landroid/hardware/tv/cec/V1_0/IHdmiCec;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Proxy;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, v3, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 35
    .line 36
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/tv/cec/V1_0/IHdmiCec$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v4, :cond_2

    .line 61
    .line 62
    move-object v2, v3

    .line 63
    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method


# virtual methods
.method public abstract addLogicalAddress(I)I
.end method

.method public abstract clearLogicalAddress()V
.end method

.method public abstract enableAudioReturnChannel(IZ)V
.end method

.method public abstract getCecVersion()I
.end method

.method public abstract getPhysicalAddress(Landroid/hardware/tv/cec/V1_0/IHdmiCec$getPhysicalAddressCallback;)V
.end method

.method public abstract getPortInfo()Ljava/util/ArrayList;
.end method

.method public abstract getVendorId()I
.end method

.method public abstract isConnected(I)Z
.end method

.method public abstract sendMessage(Landroid/hardware/tv/cec/V1_0/CecMessage;)I
.end method

.method public abstract setCallback(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback10;)V
.end method

.method public abstract setLanguage(Ljava/lang/String;)V
.end method

.method public abstract setOption(IZ)V
.end method
