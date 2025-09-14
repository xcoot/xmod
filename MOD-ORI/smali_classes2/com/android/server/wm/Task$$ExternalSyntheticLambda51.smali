.class public final synthetic Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;->f$0:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;->f$0:Ljava/lang/String;

    .line 2
    .line 3
    sget-boolean v0, Lcom/android/server/am/AppStateBroadcaster;->DEBUG:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string/jumbo v2, "sendApplicationFocusGain("

    .line 10
    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ")"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/android/server/am/AppStateBroadcaster;->logOriginFunction(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-boolean v1, Lcom/android/server/am/AppStateBroadcaster;->mIsBroadcastEnabled:Z

    .line 31
    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_4

    .line 39
    .line 40
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_4

    .line 49
    .line 50
    :cond_1
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    const-string v2, "AppStateBroadcaster"

    .line 57
    .line 58
    if-nez v1, :cond_2

    .line 59
    .line 60
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 61
    .line 62
    const-string v3, "FOCUS_LOSS"

    .line 63
    .line 64
    invoke-static {v1, v3}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    const-string/jumbo v3, "sendApplicationFocusGain sent APP_STATE_FOCUS_LOSS for "

    .line 72
    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sget-object v3, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {v1, v3, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    const-string v1, "FOCUS_GAIN"

    .line 83
    .line 84
    invoke-static {p0, v1}, Lcom/android/server/am/AppStateBroadcaster;->broadcastAppState(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    const-string/jumbo v0, "sendApplicationFocusGain sent APP_STATE_FOCUS_GAIN for "

    .line 90
    .line 91
    .line 92
    const-string v1, ", old focus package was "

    .line 93
    .line 94
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/jobs/DumpUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    sget-object v1, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1, v2}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_3
    sput-object p0, Lcom/android/server/am/AppStateBroadcaster;->mLastFocusAppName:Ljava/lang/String;

    .line 104
    .line 105
    :cond_4
    return-void
.end method
