.class public final synthetic Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AutomaticBrightnessController;

.field public final synthetic f$1:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/SensorEvent;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/AutomaticBrightnessController$$ExternalSyntheticLambda0;->f$1:Landroid/hardware/SensorEvent;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/hardware/SensorEvent;->values:[F

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    aget v1, v1, v2

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v1, v1, v2

    .line 15
    .line 16
    if-ltz v1, :cond_0

    .line 17
    .line 18
    iput-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    .line 25
    .line 26
    if-eqz p0, :cond_1

    .line 27
    .line 28
    iget-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLastRealLuxEventDuringInjection:Landroid/hardware/SensorEvent;

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lcom/android/server/display/AutomaticBrightnessController;->onSensorChangedInternal(Landroid/hardware/SensorEvent;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    iput-object p0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mInjectedLuxEvent:Landroid/hardware/SensorEvent;

    .line 35
    .line 36
    :cond_1
    :goto_0
    return-void
.end method
