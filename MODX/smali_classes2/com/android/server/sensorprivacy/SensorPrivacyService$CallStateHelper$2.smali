.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

.field public final synthetic val$callState:I


# direct methods
.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultLanguage()Ljava/util/Locale;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/speech/tts/TtsEngines;->normalizeTTSLocale(Ljava/util/Locale;)Ljava/util/Locale;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v1

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 20
    .line 21
    iget-object v2, v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sget-object v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->ACTION_DISABLE_TOGGLE_SENSOR_PRIVACY:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string/jumbo v4, "readGuideString ttsLanguage="

    .line 32
    .line 33
    .line 34
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v4, " result="

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v4, " callState= "

    .line 49
    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    .line 54
    .line 55
    const-string v5, "SensorPrivacyService"

    .line 56
    .line 57
    invoke-static {v3, v4, v5}, Lcom/android/server/accessibility/GestureWakeup$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const/4 v3, -0x2

    .line 61
    if-ne v2, v3, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 64
    .line 65
    iget-object v0, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    move-object v1, v0

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 73
    .line 74
    iget-object v2, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 75
    .line 76
    iget-object v3, v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 77
    .line 78
    iget-object v3, v3, Lcom/android/server/sensorprivacy/SensorPrivacyService;->mContext:Landroid/content/Context;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    new-instance v0, Landroid/content/res/Configuration;

    .line 84
    .line 85
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v0, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const v1, 0x1040d66

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->val$callState:I

    .line 115
    .line 116
    const/4 v3, 0x1

    .line 117
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 118
    .line 119
    if-ne v1, v3, :cond_2

    .line 120
    .line 121
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForTTSPath:Ljava/util/HashMap;

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_2
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mTtsHashForVoiceCallPath:Ljava/util/HashMap;

    .line 125
    .line 126
    :goto_2
    const/4 v1, 0x0

    .line 127
    invoke-virtual {v2, v0, v1, p0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 128
    .line 129
    .line 130
    return-void
.end method
