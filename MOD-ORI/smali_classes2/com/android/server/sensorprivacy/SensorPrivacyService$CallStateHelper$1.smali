.class public final Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


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
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInit(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->this$1:Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$1;->val$callState:I

    .line 4
    .line 5
    iget-object v0, p1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->mHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;

    .line 8
    .line 9
    invoke-direct {v1, p1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;I)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p0, 0x3e8

    .line 13
    .line 14
    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
