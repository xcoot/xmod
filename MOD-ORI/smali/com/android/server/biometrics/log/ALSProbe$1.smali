.class public final Lcom/android/server/biometrics/log/ALSProbe$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/ALSProbe;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/ALSProbe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

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
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/ALSProbe$1;->this$0:Lcom/android/server/biometrics/log/ALSProbe;

    .line 2
    .line 3
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aget p1, p1, v0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/log/ALSProbe;->onNext(F)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
