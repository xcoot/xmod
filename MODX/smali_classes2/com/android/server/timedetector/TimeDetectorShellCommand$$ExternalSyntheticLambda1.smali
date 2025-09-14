.class public final synthetic Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Landroid/app/timedetector/ManualTimeSuggestion;

    .line 9
    .line 10
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    check-cast p1, Landroid/app/time/ExternalTimeSuggestion;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_1
    check-cast p1, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    const-string v1, "android.permission.SET_TIME"

    .line 25
    .line 26
    const-string/jumbo v2, "suggest gnss time"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :pswitch_2
    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 48
    .line 49
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_3
    check-cast p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 56
    .line 57
    const-string v1, "android.permission.SET_TIME"

    .line 58
    .line 59
    const-string/jumbo v2, "suggest network time"

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mHandler:Landroid/os/Handler;

    .line 69
    .line 70
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;

    .line 71
    .line 72
    const/4 v2, 0x3

    .line 73
    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorService;Ljava/lang/Object;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
