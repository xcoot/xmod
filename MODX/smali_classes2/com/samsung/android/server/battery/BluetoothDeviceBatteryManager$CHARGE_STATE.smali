.class final enum Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
.super Ljava/lang/Enum;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

.field public static final enum CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 2
    .line 3
    const-string v1, "CHARGE_STATE_DISCHARGE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v2, v1}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_DISCHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 10
    .line 11
    new-instance v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 12
    .line 13
    const-string v2, "CHARGE_STATE_WIRED_CHARGE"

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v1, v3, v3, v2}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRED_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 20
    .line 21
    new-instance v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 22
    .line 23
    const-string v3, "CHARGE_STATE_WIRELESS_CHARGE"

    .line 24
    .line 25
    const/4 v4, 0x2

    .line 26
    invoke-direct {v2, v4, v4, v3}, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;-><init>(IILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->CHARGE_STATE_WIRELESS_CHARGE:Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 30
    .line 31
    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->index:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 1

    .line 1
    const-class v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->$VALUES:[Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/samsung/android/server/battery/BluetoothDeviceBatteryManager$CHARGE_STATE;

    .line 8
    .line 9
    return-object v0
.end method
