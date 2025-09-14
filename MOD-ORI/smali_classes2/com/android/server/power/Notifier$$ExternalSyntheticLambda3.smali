.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/server/power/Notifier$Interactivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;ILcom/android/server/power/Notifier$Interactivity;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    .line 4
    .line 5
    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    .line 6
    .line 7
    iput-object p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    .line 11
    .line 12
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 18
    .line 19
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 20
    .line 21
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(II)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    .line 28
    .line 29
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    .line 30
    .line 31
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    .line 32
    .line 33
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iget v2, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 39
    .line 40
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 41
    .line 42
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 43
    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp(II)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    const-string v2, "handleEarlyInteractiveChange: groupId="

    .line 50
    .line 51
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, " reason="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 63
    .line 64
    const-string v1, "PowerManagerNotifier"

    .line 65
    .line 66
    invoke-static {v0, p0, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    .line 71
    .line 72
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    .line 75
    .line 76
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    .line 80
    .line 81
    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 82
    .line 83
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 84
    .line 85
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 86
    .line 87
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(II)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/Notifier;

    .line 92
    .line 93
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$1:I

    .line 94
    .line 95
    iget-object p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda3;->f$2:Lcom/android/server/power/Notifier$Interactivity;

    .line 96
    .line 97
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    iget p0, p0, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 103
    .line 104
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 105
    .line 106
    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    .line 107
    .line 108
    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/PhoneWindowManager;->finishedWakingUp(II)V

    .line 109
    .line 110
    .line 111
    return-void

    .line 112
    nop

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
