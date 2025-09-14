.class public final Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget p1, p1, v0

    .line 5
    .line 6
    float-to-int p1, p1

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    mul-long/2addr v1, v3

    .line 14
    sget-boolean v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->DBG:Z

    .line 15
    .line 16
    const-string/jumbo v3, "onSensorChanged: "

    .line 17
    .line 18
    .line 19
    const-string v4, " "

    .line 20
    .line 21
    invoke-static {p1, v3, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 26
    .line 27
    iget v4, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 28
    .line 29
    const-string v5, "SAccessoryManager_CoverAuthenticator"

    .line 30
    .line 31
    invoke-static {v3, v4, v5}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    if-ne p1, v3, :cond_0

    .line 36
    .line 37
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 38
    .line 39
    iget v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 40
    .line 41
    if-eq v5, v3, :cond_0

    .line 42
    .line 43
    invoke-virtual {v4, v1, v2, v3, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 47
    .line 48
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 49
    .line 50
    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 57
    .line 58
    iget v5, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 59
    .line 60
    if-eqz v5, :cond_1

    .line 61
    .line 62
    invoke-virtual {v4, v1, v2, v0, v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->onCoverAttached(JZZ)V

    .line 63
    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$8;->this$0:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;

    .line 66
    .line 67
    iput p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->mCoverStateBySensor:I

    .line 68
    .line 69
    invoke-static {p0, p1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;->-$$Nest$maddSensorRecord(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator;I)V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method
