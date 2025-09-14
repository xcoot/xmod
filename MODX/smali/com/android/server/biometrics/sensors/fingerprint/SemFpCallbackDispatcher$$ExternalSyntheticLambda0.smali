.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 5
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 3
    packed-switch v0, :pswitch_data_0

    .line 6
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollSessionMonitor;

    .line 12
    if-eqz p0, :cond_0

    .line 14
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    .line 16
    check-cast v1, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 24
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mChallengeListeners:Ljava/util/List;

    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    :cond_1
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 38
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 40
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAuthenticationListener;

    .line 42
    if-eqz p0, :cond_2

    .line 44
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 46
    check-cast v1, Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 54
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mAuthenticationListeners:Ljava/util/List;

    .line 56
    check-cast v0, Ljava/util/ArrayList;

    .line 58
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_1

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    :cond_3
    :goto_1
    return-void

    .line 66
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 68
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 70
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpResetLockoutDispatcher;

    .line 72
    if-eqz p0, :cond_4

    .line 74
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mResetLockoutListeners:Ljava/util/List;

    .line 76
    check-cast v1, Ljava/util/ArrayList;

    .line 78
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 81
    move-result v1

    .line 82
    if-nez v1, :cond_5

    .line 84
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mResetLockoutListeners:Ljava/util/List;

    .line 86
    check-cast v0, Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    :cond_5
    :goto_2
    return-void

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 98
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 100
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEnrollmentListener;

    .line 102
    if-eqz p0, :cond_6

    .line 104
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 106
    check-cast v1, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 114
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEnrollListeners:Ljava/util/List;

    .line 116
    check-cast v0, Ljava/util/ArrayList;

    .line 118
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 125
    :cond_7
    :goto_3
    return-void

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;

    .line 128
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 130
    check-cast p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventListener;

    .line 132
    if-eqz p0, :cond_8

    .line 134
    iget-object v1, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEventListeners:Ljava/util/List;

    .line 136
    check-cast v1, Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_9

    .line 144
    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpCallbackDispatcher;->mEventListeners:Ljava/util/List;

    .line 146
    check-cast v0, Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_4

    .line 152
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 155
    :cond_9
    :goto_4
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
