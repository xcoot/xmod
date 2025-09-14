.class public final Lcom/android/server/sensorprivacy/SensorState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mLastChange:J

.field public mStateType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 3
    sget-object p1, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorState;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 8
    iput v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 9
    iget-wide v0, p1, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    .line 10
    iput-wide v0, p0, Lcom/android/server/sensorprivacy/SensorState;->mLastChange:J

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 11
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/sensorprivacy/SensorState;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final isEnabled()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorState;->mStateType:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
