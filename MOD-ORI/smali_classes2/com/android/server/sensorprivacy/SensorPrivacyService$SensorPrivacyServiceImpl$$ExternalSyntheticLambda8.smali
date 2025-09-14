.class public final synthetic Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:I

.field public final synthetic f$3:[Z

.field public final synthetic f$4:[Z

.field public final synthetic f$5:I

.field public final synthetic f$6:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[ZI)V
    .locals 0

    .line 1
    iput p8, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$1:[Z

    .line 6
    .line 7
    iput p3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 8
    .line 9
    iput-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$3:[Z

    .line 10
    .line 11
    iput-object p5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$4:[Z

    .line 12
    .line 13
    iput p6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$5:I

    .line 14
    .line 15
    iput-object p7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$6:[Z

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$1:[Z

    .line 9
    .line 10
    iget v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 11
    .line 12
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$3:[Z

    .line 13
    .line 14
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$4:[Z

    .line 15
    .line 16
    iget v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$5:I

    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$6:[Z

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    const/4 v7, 0x1

    .line 22
    invoke-virtual {v0, v2, v6, v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 23
    .line 24
    .line 25
    move-result v8

    .line 26
    aput-boolean v8, v1, v7

    .line 27
    .line 28
    invoke-virtual {v0, v2, v6, v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    aput-boolean v1, v3, v7

    .line 33
    .line 34
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    aput-boolean v1, v4, v7

    .line 39
    .line 40
    invoke-virtual {v0, v5, v6, v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    aput-boolean v0, p0, v7

    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$1:[Z

    .line 50
    .line 51
    iget v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$2:I

    .line 52
    .line 53
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$3:[Z

    .line 54
    .line 55
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$4:[Z

    .line 56
    .line 57
    iget v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$5:I

    .line 58
    .line 59
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;->f$6:[Z

    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    invoke-virtual {v0, v2, v6, v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 63
    .line 64
    .line 65
    move-result v7

    .line 66
    const/4 v8, 0x0

    .line 67
    aput-boolean v7, v1, v8

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-virtual {v0, v2, v6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    aput-boolean v2, v3, v8

    .line 75
    .line 76
    invoke-virtual {v0, v5, v6, v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    aput-boolean v2, v4, v8

    .line 81
    .line 82
    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    aput-boolean v0, p0, v8

    .line 87
    .line 88
    return-void

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
