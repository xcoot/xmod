.class public final Lcom/android/server/input/BatteryController$State;
.super Landroid/hardware/input/IInputDeviceBatteryState;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 2
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 6
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method

.method public constructor <init>(IJZIF)V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 15
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 16
    iput-wide p2, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 17
    iput-boolean p4, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 18
    iput p5, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 19
    iput p6, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method

.method public constructor <init>(Landroid/hardware/input/IInputDeviceBatteryState;)V
    .locals 5

    .line 7
    invoke-direct {p0}, Landroid/hardware/input/IInputDeviceBatteryState;-><init>()V

    .line 8
    iget v0, p1, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    iget-wide v1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    iget-boolean v3, p1, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    iget v4, p1, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    iget p1, p1, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 9
    iput v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->deviceId:I

    .line 10
    iput-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 11
    iput-boolean v3, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 12
    iput v4, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 13
    iput p1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string p0, "State{<not present>}"

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v1, "State{time="

    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    iget-wide v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->updateTime:J

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", isPresent="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    iget-boolean v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->isPresent:Z

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", status="

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v1, p0, Landroid/hardware/input/IInputDeviceBatteryState;->status:I

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ", capacity="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    iget p0, p0, Landroid/hardware/input/IInputDeviceBatteryState;->capacity:F

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo p0, "}"

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method
