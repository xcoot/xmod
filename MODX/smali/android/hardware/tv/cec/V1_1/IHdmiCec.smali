.class public interface abstract Landroid/hardware/tv/cec/V1_1/IHdmiCec;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/tv/cec/V1_0/IHdmiCec;


# direct methods
.method public static getService()Landroid/hardware/tv/cec/V1_1/IHdmiCec;
    .locals 5

    .line 1
    const-string/jumbo v0, "default"

    .line 4
    const-string v1, "android.hardware.tv.cec@1.1::IHdmiCec"

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v1, v0, v2}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 10
    move-result-object v0

    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {v0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 21
    instance-of v4, v3, Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 23
    if-eqz v4, :cond_1

    .line 25
    move-object v2, v3

    .line 26
    check-cast v2, Landroid/hardware/tv/cec/V1_1/IHdmiCec;

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v3, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;

    .line 31
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, v3, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 36
    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/tv/cec/V1_1/IHdmiCec$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v0

    .line 44
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_3

    .line 50
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    if-eqz v4, :cond_2

    .line 62
    move-object v2, v3

    .line 63
    :catch_0
    :cond_3
    :goto_0
    return-object v2
.end method
