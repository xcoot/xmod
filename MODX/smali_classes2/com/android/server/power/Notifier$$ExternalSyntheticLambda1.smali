.class public final synthetic Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/Notifier;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/Notifier;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/power/Notifier$$ExternalSyntheticLambda1;->f$1:I

    .line 4
    .line 5
    sget-object v1, Lcom/android/server/power/Notifier;->CHARGING_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v1, Landroid/metrics/LogMaker;

    .line 11
    .line 12
    const/16 v2, 0xc6

    .line 13
    .line 14
    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 19
    .line 20
    .line 21
    iget-object v3, v0, Lcom/android/server/power/Notifier;->mGlobalInteractivity:Lcom/android/server/power/Notifier$Interactivity;

    .line 22
    .line 23
    iget v4, v3, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 24
    .line 25
    invoke-static {v4}, Landroid/view/WindowManagerPolicyConstants;->translateWakeReasonToOnReason(I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    invoke-virtual {v1, v4}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 30
    .line 31
    .line 32
    int-to-long v4, p0

    .line 33
    invoke-virtual {v1, v4, v5}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 34
    .line 35
    .line 36
    iget v3, v3, Lcom/android/server/power/Notifier$Interactivity;->changeOnReason:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/16 v4, 0x69e

    .line 43
    .line 44
    invoke-virtual {v1, v4, v3}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 48
    .line 49
    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-wide/16 v4, 0x0

    .line 60
    .line 61
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    filled-new-array {v1, v3, v4, v2, p0}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const/16 v1, 0xaa8

    .line 78
    .line 79
    invoke-static {v1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 80
    .line 81
    .line 82
    iget-object p0, v0, Lcom/android/server/power/Notifier;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 83
    .line 84
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    return-void
.end method
