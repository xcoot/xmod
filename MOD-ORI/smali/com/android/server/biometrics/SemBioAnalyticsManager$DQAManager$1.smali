.class public final Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v0, "onBroadCastReceive [DQA]: "

    .line 8
    .line 9
    .line 10
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v0, "BiometricService.AM"

    .line 21
    .line 22
    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string/jumbo p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_1

    .line 36
    .line 37
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 47
    .line 48
    invoke-static {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    .line 55
    .line 56
    .line 57
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    .line 58
    .line 59
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    new-instance p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    .line 68
    .line 69
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 70
    .line 71
    const/4 v0, -0x1

    .line 72
    const/4 v1, 0x2

    .line 73
    const-string v2, "FPDA"

    .line 74
    .line 75
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpCalibrationStatus:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-nez p2, :cond_4

    .line 85
    .line 86
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpCalibrationStatus:Ljava/lang/String;

    .line 87
    .line 88
    const-string v0, "FPCA"

    .line 89
    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_2
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 98
    .line 99
    if-nez v1, :cond_3

    .line 100
    .line 101
    new-instance v1, Landroid/util/ArrayMap;

    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 105
    .line 106
    .line 107
    iput-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 108
    .line 109
    :cond_3
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mDqaKeys:Ljava/util/Map;

    .line 110
    .line 111
    check-cast v1, Landroid/util/ArrayMap;

    .line 112
    .line 113
    invoke-virtual {v1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_1
    return-void
.end method
