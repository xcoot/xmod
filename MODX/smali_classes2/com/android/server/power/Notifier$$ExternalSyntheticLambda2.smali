.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/Notifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$1:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$2:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/Notifier;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$1:I

    .line 4
    .line 5
    iget p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda2;->f$2:I

    .line 6
    .line 7
    sget-object v2, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    new-instance v2, Landroid/metrics/LogMaker;

    .line 13
    .line 14
    const/16 v3, 0xc6

    .line 15
    .line 16
    invoke-direct {v2, v3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x2

    .line 20
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 24
    .line 25
    .line 26
    int-to-long v3, p0

    .line 27
    invoke-virtual {v2, v3, v4}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 28
    .line 29
    .line 30
    iget-object v3, v0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 31
    .line 32
    iget v3, v3, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 33
    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const/16 v4, 0x69f

    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const-wide/16 v5, 0x0

    .line 56
    .line 57
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    filled-new-array {v3, v4, v5, v6, p0}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const/16 v3, 0xaa8

    .line 74
    .line 75
    invoke-static {v3, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 76
    .line 77
    .line 78
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 79
    .line 80
    iget-object v3, v0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 81
    .line 82
    iget v3, v3, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 83
    .line 84
    check-cast p0, Lcom/android/server/policy/PhoneWindowManager;

    .line 85
    .line 86
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeviceGoingToSleep:Z

    .line 87
    .line 88
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 89
    .line 90
    const-string/jumbo v2, "why"

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mScreenOffIntent:Landroid/content/Intent;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 99
    .line 100
    iget v0, v0, Lcom/android/server/power/Notifier$Interactivity;->changeOffReason:I

    .line 101
    .line 102
    const-string/jumbo v1, "reason"

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    return-void
.end method
