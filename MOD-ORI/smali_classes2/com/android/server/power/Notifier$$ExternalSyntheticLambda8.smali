.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/Notifier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/Notifier;

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
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/power/Notifier;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 19
    .line 20
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 21
    .line 22
    const/4 p0, 0x1

    .line 23
    iput-boolean p0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->onEarlyInteractivityChange(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 33
    .line 34
    iget v1, v0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 35
    .line 36
    iget-object p0, p0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 37
    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v1, "handleEarlyGlobalInteractiveChange reason = "

    .line 44
    .line 45
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget v0, v0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 49
    .line 50
    const-string v1, "PowerManagerNotifier"

    .line 51
    .line 52
    invoke-static {p0, v0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
