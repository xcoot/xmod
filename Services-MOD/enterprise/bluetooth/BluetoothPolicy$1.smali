.class public final Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->$r8$classId:I

    .line 3
    iput-object p2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->$r8$classId:I

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 6
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 8
    const/high16 v0, -0x80000000

    .line 10
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    move-result p1

    .line 14
    const/16 p2, 0xc

    .line 16
    if-ne p1, p2, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 20
    check-cast p0, Landroid/os/ConditionVariable;

    .line 22
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->open()V

    .line 25
    :cond_0
    return-void

    .line 26
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    const-string/jumbo v1, "onReceive "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    const-string v1, "BluetoothPolicyService"

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 52
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result v0

    .line 56
    const/4 v2, 0x0

    .line 57
    if-eqz v0, :cond_1

    .line 59
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 61
    const/high16 v0, -0x80000000

    .line 63
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 66
    move-result p1

    .line 67
    const/16 p2, 0xa

    .line 69
    if-ne p1, p2, :cond_5

    .line 71
    iget-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 73
    check-cast p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 75
    iget-boolean p1, p1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 77
    if-eqz p1, :cond_5

    .line 79
    const-string p1, "***** Restarting Bluetooth *****"

    .line 81
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 86
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 88
    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 90
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_5

    .line 96
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 103
    goto/16 :goto_1

    .line 105
    :cond_1
    const-string/jumbo v0, "com.samsung.android.knox.intent.action.KNOXFRAMEWORK_SYSTEMUI_UPDATE_INTENT_INTERNAL"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 114
    const-string/jumbo p1, "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

    .line 117
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 120
    move-result p1

    .line 121
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 123
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 125
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_3

    .line 131
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 134
    move-result-object p2

    .line 135
    if-eqz p2, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM$2()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 140
    move-result-object p2

    .line 141
    const/16 v0, 0x8

    .line 143
    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    .line 146
    move-result p2

    .line 147
    goto :goto_0

    .line 148
    :cond_2
    move p2, v2

    .line 149
    :goto_0
    if-nez p2, :cond_3

    .line 151
    const/4 v2, 0x1

    .line 152
    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->setBluetoothAllowedSystemUI(IZ)V

    .line 155
    goto :goto_1

    .line 156
    :cond_4
    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_5

    .line 164
    iget-object p0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;->this$0:Ljava/lang/Object;

    .line 166
    check-cast p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 168
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    .line 171
    move-result p0

    .line 172
    if-nez p0, :cond_5

    .line 174
    const-string p0, "android.bluetooth.device.extra.DEVICE"

    .line 176
    invoke-virtual {p2, p0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 179
    move-result-object p0

    .line 180
    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    .line 182
    if-eqz p0, :cond_5

    .line 184
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    .line 187
    move-result-object p1

    .line 188
    if-eqz p1, :cond_5

    .line 190
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    .line 193
    move-result p1

    .line 194
    const/16 p2, 0x100

    .line 196
    if-ne p1, p2, :cond_5

    .line 198
    new-instance p1, Ljava/lang/StringBuilder;

    .line 200
    const-string p2, "Unpair this bluetooth computer(ACL CONNECTED) : "

    .line 202
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 222
    :cond_5
    :goto_1
    return-void

    .line 223
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
