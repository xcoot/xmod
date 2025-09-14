.class public interface abstract Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public static get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "android.hardware.health@2.0::IHealth"

    .line 3
    .line 4
    invoke-static {v1, p0, v0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v0, 0x0

    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    instance-of v3, v2, Landroid/hardware/health/V2_0/IHealth;

    .line 19
    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    move-object v0, v2

    .line 23
    check-cast v0, Landroid/hardware/health/V2_0/IHealth;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    new-instance v2, Landroid/hardware/health/V2_0/IHealth$Proxy;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p0, v2, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 32
    .line 33
    :try_start_0
    invoke-virtual {v2}, Landroid/hardware/health/V2_0/IHealth$Proxy;->interfaceChain()Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    if-eqz v3, :cond_2

    .line 58
    .line 59
    move-object v0, v2

    .line 60
    :catch_0
    :cond_3
    :goto_0
    return-object v0
.end method
