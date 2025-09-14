.class public final Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mListener:Lcom/android/server/policy/WakeGestureListener$1;

.field public final mLock:Ljava/lang/Object;

.field public final mSensor:Landroid/hardware/Sensor;

.field public final mSensorManager:Landroid/hardware/SensorManager;

.field public mTriggerRequested:Z

.field public final mWakeUpRunnable:Lcom/android/server/policy/WakeGestureListener$2;

.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 5
    .line 6
    new-instance p1, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    new-instance p1, Lcom/android/server/policy/WakeGestureListener$1;

    .line 14
    .line 15
    invoke-direct {p1, p0}, Lcom/android/server/policy/WakeGestureListener$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mListener:Lcom/android/server/policy/WakeGestureListener$1;

    .line 19
    .line 20
    new-instance p1, Lcom/android/server/policy/WakeGestureListener$2;

    .line 21
    .line 22
    invoke-direct {p1, p0}, Lcom/android/server/policy/WakeGestureListener$2;-><init>(Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mWakeUpRunnable:Lcom/android/server/policy/WakeGestureListener$2;

    .line 26
    .line 27
    const-string/jumbo p1, "sensor"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Landroid/hardware/SensorManager;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const/16 p2, 0x17

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->mSensor:Landroid/hardware/Sensor;

    .line 47
    .line 48
    return-void
.end method
