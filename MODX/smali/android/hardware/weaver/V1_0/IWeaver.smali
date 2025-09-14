.class public interface abstract Landroid/hardware/weaver/V1_0/IWeaver;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hidl/base/V1_0/IBase;


# direct methods
.method public static getService(Z)Landroid/hardware/weaver/V1_0/IWeaver;
    .locals 4

    .line 1
    const-string/jumbo v0, "default"

    .line 4
    const-string v1, "android.hardware.weaver@1.0::IWeaver"

    .line 6
    invoke-static {v1, v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 9
    move-result-object p0

    .line 10
    const/4 v0, 0x0

    .line 11
    if-nez p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 20
    instance-of v3, v2, Landroid/hardware/weaver/V1_0/IWeaver;

    .line 22
    if-eqz v3, :cond_1

    .line 24
    move-object v0, v2

    .line 25
    check-cast v0, Landroid/hardware/weaver/V1_0/IWeaver;

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v2, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;

    .line 30
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p0, v2, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 35
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/weaver/V1_0/IWeaver$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 43
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 49
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Ljava/lang/String;

    .line 55
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz v3, :cond_2

    .line 61
    move-object v0, v2

    .line 62
    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method
