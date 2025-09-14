.class public final Lcom/samsung/android/server/audio/PhoneStateHelper$1;
.super Landroid/telephony/PhoneStateListener;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/PhoneStateHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_5

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 8
    .line 9
    iget v1, v1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "RIL State is changed: "

    .line 17
    .line 18
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 22
    .line 23
    iget v3, v3, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v3, " -> "

    .line 29
    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v3, "AS.PhoneStateHelper"

    .line 41
    .line 42
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    if-eq v0, v2, :cond_0

    .line 46
    .line 47
    const-string v1, "l_call_ril_state_connected=true"

    .line 48
    .line 49
    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 53
    .line 54
    iput v0, v1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mRilState:I

    .line 55
    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    if-eq p1, v2, :cond_3

    .line 66
    .line 67
    const/16 v0, 0x10

    .line 68
    .line 69
    if-eq p1, v0, :cond_3

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    if-ne p1, v0, :cond_2

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v2, 0x0

    .line 76
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 77
    .line 78
    iget-boolean p1, p1, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    .line 79
    .line 80
    if-eq p1, v2, :cond_5

    .line 81
    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    const-string/jumbo p1, "true"

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const-string p1, "false"

    .line 89
    .line 90
    :goto_1
    const-string v0, "l_call_2g_tdma="

    .line 91
    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 97
    .line 98
    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/audio/PhoneStateHelper$1;->this$0:Lcom/samsung/android/server/audio/PhoneStateHelper;

    .line 100
    .line 101
    iput-boolean v2, p0, Lcom/samsung/android/server/audio/PhoneStateHelper;->mIs2GTDMANetwork:Z

    .line 102
    .line 103
    :cond_5
    return-void
.end method
