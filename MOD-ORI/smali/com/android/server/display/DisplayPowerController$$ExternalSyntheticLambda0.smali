.class public final synthetic Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->handleBrightnessModeChange()V

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 22
    .line 23
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 24
    .line 25
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    const/high16 v2, -0x40800000    # -1.0f

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_1
    check-cast p0, Lcom/android/server/display/DisplayPowerControllerInterface;

    .line 36
    .line 37
    check-cast p0, Lcom/android/server/display/DisplayPowerController;

    .line 38
    .line 39
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    const/high16 v2, -0x40800000    # -1.0f

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/android/server/display/DisplayPowerController;->setBrightnessToFollow(FFFZ)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
