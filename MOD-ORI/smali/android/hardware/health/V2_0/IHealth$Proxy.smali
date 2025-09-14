.class public final Landroid/hardware/health/V2_0/IHealth$Proxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/health/V2_0/IHealth;


# instance fields
.field public mRemote:Landroid/os/IHwBinder;


# virtual methods
.method public final asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public final debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Landroid/os/NativeHandle;Ljava/util/ArrayList;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v0, 0xf444247

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-interface {p0, v0, p1, p2, v1}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {p2}, Landroid/os/HwParcel;->release()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/os/HidlSupport;->interfacesEqual(Landroid/os/IHwInterface;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public final getCapacity(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x7

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 36
    .line 37
    iput p0, v2, Landroid/util/MutableInt;->value:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getChargeCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 36
    .line 37
    iput p0, v2, Landroid/util/MutableInt;->value:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getChargeStatus(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/16 v2, 0x9

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget-object v2, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 37
    .line 38
    iput p0, v2, Landroid/util/MutableInt;->value:I

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    int-to-long v2, v0

    .line 43
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 52
    .line 53
    .line 54
    throw p0
.end method

.method public final getCurrentAverage(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x6

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 36
    .line 37
    iput p0, v2, Landroid/util/MutableInt;->value:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getCurrentNow(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v2, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 36
    .line 37
    iput p0, v2, Landroid/util/MutableInt;->value:I

    .line 38
    .line 39
    if-nez p0, :cond_0

    .line 40
    .line 41
    int-to-long v2, v0

    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf524546

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    new-instance p0, Landroid/hidl/base/V1_0/DebugInfo;

    .line 28
    .line 29
    invoke-direct {p0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1}, Landroid/hidl/base/V1_0/DebugInfo;->readFromParcel(Landroid/os/HwParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 36
    .line 37
    .line 38
    return-object p0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 41
    .line 42
    .line 43
    throw p0
.end method

.method public final getEnergyCounter(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt64()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    iget-object v0, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$0:Landroid/util/MutableInt;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda1;->f$1:Landroid/os/BatteryProperty;

    .line 37
    .line 38
    iput p0, v0, Landroid/util/MutableInt;->value:I

    .line 39
    .line 40
    if-nez p0, :cond_0

    .line 41
    .line 42
    invoke-virtual {p1, v2, v3}, Landroid/os/BatteryProperty;->setLong(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 51
    .line 52
    .line 53
    throw p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 12

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v9, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v9}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v1, 0xf485348

    .line 15
    .line 16
    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-interface {p0, v1, v0, v9, v10}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v9}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    const-wide/16 v0, 0x10

    .line 33
    .line 34
    invoke-virtual {v9, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-wide/16 v1, 0x8

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    .line 41
    .line 42
    .line 43
    move-result v11

    .line 44
    mul-int/lit8 v1, v11, 0x20

    .line 45
    .line 46
    int-to-long v2, v1

    .line 47
    invoke-virtual {v0}, Landroid/os/HwBlob;->handle()J

    .line 48
    .line 49
    .line 50
    move-result-wide v4

    .line 51
    const-wide/16 v6, 0x0

    .line 52
    .line 53
    const/4 v8, 0x1

    .line 54
    move-object v1, v9

    .line 55
    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-ge v10, v11, :cond_0

    .line 63
    .line 64
    const/16 v1, 0x20

    .line 65
    .line 66
    new-array v2, v1, [B

    .line 67
    .line 68
    mul-int/lit8 v3, v10, 0x20

    .line 69
    .line 70
    int-to-long v3, v3

    .line 71
    invoke-virtual {v0, v3, v4, v2, v1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    add-int/lit8 v10, v10, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p0

    .line 81
    goto :goto_1

    .line 82
    :cond_0
    invoke-virtual {v9}, Landroid/os/HwParcel;->release()V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :goto_1
    invoke-virtual {v9}, Landroid/os/HwParcel;->release()V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method public final getHealthInfo(Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;)V
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/16 v2, 0xc

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    new-instance v0, Landroid/hardware/health/V2_0/HealthInfo;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/hardware/health/V2_0/HealthInfo;-><init>()V

    .line 33
    .line 34
    .line 35
    const-wide/16 v2, 0x70

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/hardware/health/V2_0/HealthInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V

    .line 42
    .line 43
    .line 44
    if-nez p0, :cond_0

    .line 45
    .line 46
    iget-object p0, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    .line 47
    .line 48
    new-instance v0, Landroid/hardware/health/HealthInfo;

    .line 49
    .line 50
    invoke-direct {v0}, Landroid/hardware/health/HealthInfo;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p0}, Landroid/hardware/health/Translate;->h2aTranslateInternal(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/V1_0/HealthInfo;)V

    .line 54
    .line 55
    .line 56
    iget-object p0, p1, Lcom/android/server/health/HealthServiceWrapperHidl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/android/server/health/HealthServiceWrapperHidl$Mutable;->value:Landroid/hardware/health/HealthInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    :cond_0
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 66
    .line 67
    .line 68
    throw p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0}, Landroid/os/IHwBinder;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf43484e

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf445343

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 32
    .line 33
    .line 34
    return-object p0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 37
    .line 38
    .line 39
    throw p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1, p2, p3}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf535953

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final ping()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf504e47

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public final registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .locals 3

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/HwParcel;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final setHALInstrumentation()V
    .locals 4

    .line 1
    const-string v0, "android.hidl.base@1.0::IBase"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const v2, 0xf494e54

    .line 15
    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/hardware/health/V2_0/IHealth$Proxy;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Proxy"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    return-object p0

    .line 23
    :catch_0
    const-string p0, "[class or subclass of android.hardware.health@2.0::IHealth]@Proxy"

    .line 24
    .line 25
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Landroid/os/IHwBinder;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I
    .locals 3

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    check-cast p1, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;

    .line 12
    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/os/HwParcel;->writeStrongBinder(Landroid/os/IHwBinder;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroid/os/HwParcel;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/os/HwParcel;-><init>()V

    .line 19
    .line 20
    .line 21
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 22
    .line 23
    const/4 v1, 0x2

    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-interface {p0, v1, v0, p1, v2}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/os/HwParcel;->readInt32()I

    .line 35
    .line 36
    .line 37
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 39
    .line 40
    .line 41
    return p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    invoke-virtual {p1}, Landroid/os/HwParcel;->release()V

    .line 44
    .line 45
    .line 46
    throw p0
.end method

.method public final update()I
    .locals 4

    .line 1
    const-string v0, "android.hardware.health@2.0::IHealth"

    .line 2
    .line 3
    invoke-static {v0}, Landroid/hardware/authsecret/V1_0/IAuthSecret$Proxy$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/os/HwParcel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/HwParcel;

    .line 8
    .line 9
    invoke-direct {v1}, Landroid/os/HwParcel;-><init>()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object p0, p0, Landroid/hardware/health/V2_0/IHealth$Proxy;->mRemote:Landroid/os/IHwBinder;

    .line 13
    .line 14
    const/4 v2, 0x3

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IHwBinder;->transact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/os/HwParcel;->verifySuccess()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/HwParcel;->releaseTemporaryStorage()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/os/HwParcel;->readInt32()I

    .line 26
    .line 27
    .line 28
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 30
    .line 31
    .line 32
    return p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    invoke-virtual {v1}, Landroid/os/HwParcel;->release()V

    .line 35
    .line 36
    .line 37
    throw p0
.end method
