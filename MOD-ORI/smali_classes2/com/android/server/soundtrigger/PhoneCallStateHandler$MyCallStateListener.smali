.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;
.super Landroid/telephony/TelephonyCallback;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# instance fields
.field public final mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

.field public final synthetic this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;Landroid/telephony/TelephonyManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->mTelephonyManagerForSubId:Landroid/telephony/TelephonyManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/PhoneCallStateHandler;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/flags/Flags;->enforceTelephonyFeatureMapping()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;I)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;

    .line 49
    .line 50
    const/4 v1, 0x2

    .line 51
    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda0;-><init>(I)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    new-instance v0, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    :goto_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    xor-int/lit8 v1, p1, 0x1

    .line 71
    .line 72
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mCallback:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/soundtrigger/DeviceStateHandler;->onPhoneCallStateChanged(Z)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void
.end method
