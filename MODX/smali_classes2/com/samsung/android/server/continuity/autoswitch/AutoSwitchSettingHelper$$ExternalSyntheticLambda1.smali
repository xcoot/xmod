.class public final synthetic Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

.field public final synthetic f$1:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper$$ExternalSyntheticLambda1;->f$1:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "checkAutoSwitchEnabled - deviceList size:"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "[MCF_DS_SYS]_AutoSwitchSettingHelper"

    .line 27
    .line 28
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    .line 46
    .line 47
    iget-object v2, v1, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;->mAddress:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-nez v2, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    if-eqz v4, :cond_1

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    sget-object v2, Lcom/samsung/android/server/continuity/sem/SemWrapper;->SEM_ALL:Landroid/os/UserHandle;

    .line 67
    .line 68
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->semGetAutoSwitchMode()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const/4 v3, 0x1

    .line 73
    if-ne v2, v3, :cond_3

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->addDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->removeDevice(Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setAutoSwitchModeEnabled()V

    .line 84
    .line 85
    .line 86
    const/4 p0, 0x0

    .line 87
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/continuity/autoswitch/AutoSwitchSettingHelper;->setStandAloneBleMode(Z)V

    .line 88
    .line 89
    .line 90
    return-void
.end method
