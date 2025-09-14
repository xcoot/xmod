.class public Lcom/android/server/hdmi/HdmiCecNetwork;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCecSwitches:Landroid/util/ArraySet;

.field public final mDeviceInfos:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

.field public final mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

.field public final mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

.field public final mLocalDevices:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public mPhysicalAddress:I

.field public mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

.field public mPortInfo:Ljava/util/List;

.field public mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

.field public mSafeAllDeviceInfos:Ljava/util/List;

.field public mSafeExternalInputs:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiMhlControllerStub;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 17
    .line 18
    new-instance v0, Landroid/util/ArraySet;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 30
    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    .line 36
    .line 37
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 42
    .line 43
    const v0, 0xffff

    .line 44
    .line 45
    .line 46
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPhysicalAddress:I

    .line 47
    .line 48
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 51
    .line 52
    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 53
    .line 54
    new-instance p2, Landroid/os/Handler;

    .line 55
    .line 56
    iget-object p3, p1, Lcom/android/server/hdmi/HdmiControlService;->mHandler:Landroid/os/Handler;

    .line 57
    .line 58
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 63
    .line 64
    .line 65
    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 68
    .line 69
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLock:Ljava/lang/Object;

    .line 70
    .line 71
    return-void
.end method


# virtual methods
.method public final addCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const v2, 0xffff

    .line 29
    .line 30
    .line 31
    if-ne v1, v2, :cond_1

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const/4 v1, 0x1

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v3, v2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_4

    .line 49
    .line 50
    const/4 v2, 0x2

    .line 51
    invoke-virtual {p0, v0, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 59
    .line 60
    .line 61
    :cond_4
    :goto_1
    return-void
.end method

.method public final addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 21
    .line 22
    iget-object v4, v3, Lcom/android/server/hdmi/HdmiControlService;->mHdmiCecNetwork:Lcom/android/server/hdmi/HdmiCecNetwork;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v2, v4, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->getAllCecLocalDevices()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 52
    .line 53
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ne v5, v1, :cond_1

    .line 62
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v2, "allocate logical address for "

    .line 66
    .line 67
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    new-array v2, v2, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/util/ArrayList;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    const/4 v2, 0x4

    .line 96
    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiControlService;->allocateLogicalAddress(Ljava/util/ArrayList;I)V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 106
    .line 107
    .line 108
    :cond_3
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    .line 118
    .line 119
    .line 120
    return-object v0
.end method

.method public final assertRunOnServiceThread()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-ne v0, p0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v0, "Should run on service thread."

    .line 17
    .line 18
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw p0
.end method

.method public final clearDeviceList()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eq v2, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    const v3, 0xffff

    .line 43
    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 v2, 0x2

    .line 49
    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 15
    .line 16
    return-object p0
.end method

.method public final getDeviceInfoList()Ljava/util/List;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_1

    .line 17
    .line 18
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 19
    .line 20
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 25
    .line 26
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v0
.end method

.method public final getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getLocalDeviceList()Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public final getPhysicalAddress()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPhysicalAddress:I

    .line 2
    .line 3
    const v1, 0xffff

    .line 4
    .line 5
    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecController;->assertRunOnServiceThread()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPhysicalAddress()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPhysicalAddress:I

    .line 20
    .line 21
    :cond_0
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPhysicalAddress:I

    .line 22
    .line 23
    return p0
.end method

.method public final getPortInfo(I)Landroid/hardware/hdmi/HdmiPortInfo;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseArray;->mArray:Landroid/util/SparseArray;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Landroid/hardware/hdmi/HdmiPortInfo;

    .line 11
    .line 12
    return-object p0
.end method

.method public final getSafeCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isCecDevice()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-ne v1, p1, :cond_0

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return-object p0
.end method

.method public final hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/Integer;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    move v3, v0

    .line 35
    :goto_0
    const/16 v4, 0xc

    .line 36
    .line 37
    if-gt v3, v4, :cond_0

    .line 38
    .line 39
    shr-int v4, v1, v3

    .line 40
    .line 41
    and-int/lit8 v4, v4, 0xf

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    shr-int v4, v2, v3

    .line 46
    .line 47
    and-int/lit8 v4, v4, 0xf

    .line 48
    .line 49
    if-nez v4, :cond_0

    .line 50
    .line 51
    add-int/lit8 v3, v3, 0x4

    .line 52
    .line 53
    shr-int v4, v1, v3

    .line 54
    .line 55
    shr-int/2addr v2, v3

    .line 56
    if-ne v4, v2, :cond_0

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_1
    add-int/lit8 v3, v3, 0x4

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 63
    .line 64
    .line 65
    move-result p0

    .line 66
    const p1, 0xffff

    .line 67
    .line 68
    .line 69
    if-eq p0, p1, :cond_3

    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    :cond_3
    :goto_1
    return v0
.end method

.method public initPortInfo()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiCecController:Lcom/android/server/hdmi/HdmiCecController;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecController;->mNativeWrapperImpl:Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeGetPortInfos()[Landroid/hardware/hdmi/HdmiPortInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const v1, 0xffff

    .line 15
    .line 16
    .line 17
    iput v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPhysicalAddress:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v2, Landroid/util/SparseIntArray;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 32
    .line 33
    .line 34
    new-instance v3, Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 37
    .line 38
    .line 39
    array-length v4, v0

    .line 40
    const/4 v5, 0x0

    .line 41
    move v6, v5

    .line 42
    :goto_1
    if-ge v6, v4, :cond_2

    .line 43
    .line 44
    aget-object v7, v0, v6

    .line 45
    .line 46
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 51
    .line 52
    .line 53
    move-result v9

    .line 54
    invoke-virtual {v2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    invoke-virtual {v1, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    invoke-virtual {v7}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    invoke-static {v9, v7}, Landroid/hardware/hdmi/HdmiDeviceInfo;->hardwarePort(II)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v3, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    new-instance v3, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 87
    .line 88
    invoke-direct {v3, v2}, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;-><init>(Landroid/util/SparseIntArray;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 92
    .line 93
    new-instance v2, Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 94
    .line 95
    invoke-direct {v2, v1}, Lcom/android/server/hdmi/UnmodifiableSparseArray;-><init>(Landroid/util/SparseArray;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfoMap:Lcom/android/server/hdmi/UnmodifiableSparseArray;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;

    .line 101
    .line 102
    if-nez v1, :cond_3

    .line 103
    .line 104
    return-void

    .line 105
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    sget-object v1, Lcom/android/server/hdmi/HdmiMhlControllerStub;->EMPTY_PORT_INFO:[Landroid/hardware/hdmi/HdmiPortInfo;

    .line 109
    .line 110
    new-instance v2, Landroid/util/ArraySet;

    .line 111
    .line 112
    array-length v3, v1

    .line 113
    invoke-direct {v2, v3}, Landroid/util/ArraySet;-><init>(I)V

    .line 114
    .line 115
    .line 116
    array-length v3, v1

    .line 117
    move v4, v5

    .line 118
    :goto_2
    if-ge v4, v3, :cond_5

    .line 119
    .line 120
    aget-object v6, v1, v4

    .line 121
    .line 122
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->isMhlSupported()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_5
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 157
    .line 158
    return-void

    .line 159
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    .line 161
    array-length v3, v0

    .line 162
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .line 164
    .line 165
    array-length v3, v0

    .line 166
    :goto_3
    if-ge v5, v3, :cond_8

    .line 167
    .line 168
    aget-object v4, v0, v5

    .line 169
    .line 170
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 171
    .line 172
    .line 173
    move-result v6

    .line 174
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_7

    .line 183
    .line 184
    new-instance v6, Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 185
    .line 186
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getId()I

    .line 187
    .line 188
    .line 189
    move-result v7

    .line 190
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getType()I

    .line 191
    .line 192
    .line 193
    move-result v8

    .line 194
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->getAddress()I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-direct {v6, v7, v8, v9}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;-><init>(III)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isCecSupported()Z

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setCecSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    const/4 v7, 0x1

    .line 210
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setMhlSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isArcSupported()Z

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    invoke-virtual {v6, v7}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setArcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 219
    .line 220
    .line 221
    move-result-object v6

    .line 222
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo;->isEarcSupported()Z

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-virtual {v6, v4}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->setEarcSupported(Z)Landroid/hardware/hdmi/HdmiPortInfo$Builder;

    .line 227
    .line 228
    .line 229
    move-result-object v4

    .line 230
    invoke-virtual {v4}, Landroid/hardware/hdmi/HdmiPortInfo$Builder;->build()Landroid/hardware/hdmi/HdmiPortInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto :goto_4

    .line 238
    :cond_7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 242
    .line 243
    goto :goto_3

    .line 244
    :cond_8
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortInfo:Ljava/util/List;

    .line 249
    .line 250
    return-void
.end method

.method public final invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService;->mDeviceEventListenerRecords:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :try_start_1
    iget-object v1, v1, Lcom/android/server/hdmi/HdmiControlService$DeviceEventListenerRecord;->mListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 31
    .line 32
    invoke-interface {v1, p1, p2}, Landroid/hardware/hdmi/IHdmiDeviceEventListener;->onStatusChanged(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    .line 39
    :try_start_2
    const-string v2, "HdmiControlService"

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "Failed to report device event:"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    monitor-exit v0

    .line 63
    goto :goto_2

    .line 64
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    throw p0

    .line 66
    :cond_1
    :goto_2
    return-void
.end method

.method public final isAllocatedLocalDeviceAddress(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    move v1, v0

    .line 6
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 7
    .line 8
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-ge v1, v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->assertRunOnServiceThread()V

    .line 23
    .line 24
    .line 25
    iget-object v2, v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mDeviceInfo:Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-ne p1, v2, :cond_0

    .line 32
    .line 33
    const/4 p0, 0x1

    .line 34
    return p0

    .line 35
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return v0
.end method

.method public final isLocalDeviceAddress(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 4
    .line 5
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mLocalDevices:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ne v2, p1, :cond_0

    .line 34
    .line 35
    const/4 p0, 0x1

    .line 36
    return p0

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    return v0
.end method

.method public final physicalAddressToPortId(I)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    const v1, 0xf000

    .line 10
    .line 11
    .line 12
    move v3, v0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-eqz v3, :cond_1

    .line 15
    .line 16
    and-int v3, v0, v2

    .line 17
    .line 18
    or-int/2addr v1, v2

    .line 19
    shr-int/lit8 v2, v2, 0x4

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    and-int/2addr p1, v1

    .line 23
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mPortIdMap:Lcom/android/server/hdmi/UnmodifiableSparseIntArray;

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/hdmi/UnmodifiableSparseIntArray;->mArray:Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const/4 v0, -0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    return p0
.end method

.method public final removeCecDevice(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mCecMessageCache:Lcom/android/server/hdmi/HdmiCecMessageCache;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/android/server/hdmi/HdmiCecMessageCache;->mCache:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const p2, 0xffff

    .line 29
    .line 30
    .line 31
    if-ne p1, p2, :cond_0

    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const/4 p1, 0x2

    .line 35
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final removeCecSwitches(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/server/hdmi/HdmiCecNetwork;->physicalAddressToPortId(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eq v1, p1, :cond_1

    .line 28
    .line 29
    const/4 v2, -0x1

    .line 30
    if-ne v1, v2, :cond_0

    .line 31
    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    return-void
.end method

.method public final removeDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public final updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->addDeviceInfo(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const v2, 0xffff

    .line 13
    .line 14
    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0, p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    const/4 v0, 0x3

    .line 34
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->invokeDeviceEventListener(Landroid/hardware/hdmi/HdmiDeviceInfo;I)V

    .line 40
    .line 41
    .line 42
    :cond_3
    :goto_1
    return-void
.end method

.method public final updateCecSwitchInfo(III)Z
    .locals 1

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x6

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 9
    .line 10
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateSafeDeviceInfoList()V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    return p0

    .line 22
    :cond_0
    const/4 p1, 0x5

    .line 23
    if-ne p2, p1, :cond_1

    .line 24
    .line 25
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mCecSwitches:Landroid/util/ArraySet;

    .line 26
    .line 27
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return p0
.end method

.method public final updateDeviceCecVersion(II)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p0, "Can not update CEC version of non-existing device:"

    .line 11
    .line 12
    const-string p2, "HdmiCecNetwork"

    .line 13
    .line 14
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getCecVersion()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p1, p2, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setCecVersion(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final updateDevicePowerStatus(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->getCecDeviceInfo(I)Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "Can not update power status of non-existing device:"

    .line 8
    .line 9
    const-string p2, "HdmiCecNetwork"

    .line 10
    .line 11
    invoke-static {p1, p0, p2}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getDevicePowerStatus()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-ne p1, p2, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->toBuilder()Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p2}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->setDevicePowerStatus(I)Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo$Builder;->build()Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->updateCecDevice(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final updateSafeDeviceInfoList()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->assertRunOnServiceThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->sparseArrayToList(Landroid/util/SparseArray;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ge v2, v3, :cond_2

    .line 23
    .line 24
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mDeviceInfos:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {p0, v4}, Lcom/android/server/hdmi/HdmiCecNetwork;->isLocalDeviceAddress(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-virtual {v3}, Landroid/hardware/hdmi/HdmiDeviceInfo;->isSourceType()Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecNetwork;->hideDevicesBehindLegacySwitch(Landroid/hardware/hdmi/HdmiDeviceInfo;)Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeAllDeviceInfos:Ljava/util/List;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/android/server/hdmi/HdmiCecNetwork;->mSafeExternalInputs:Ljava/util/List;

    .line 64
    .line 65
    return-void
.end method
