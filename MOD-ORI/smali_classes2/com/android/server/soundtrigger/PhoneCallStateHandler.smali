.class public final Lcom/android/server/soundtrigger/PhoneCallStateHandler;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallback:Lcom/android/server/soundtrigger/DeviceStateHandler;

.field public final mExecutor:Ljava/util/concurrent/ExecutorService;

.field public final mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mListenerList:Ljava/util/List;

.field public final mLock:Ljava/lang/Object;

.field public final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/telephony/SubscriptionManager;Landroid/telephony/TelephonyManager;Lcom/android/server/soundtrigger/DeviceStateHandler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mListenerList:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mIsPhoneCallOngoing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-object v1, p1

    .line 36
    check-cast v1, Landroid/telephony/SubscriptionManager;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->createForAllUserProfiles()Landroid/telephony/SubscriptionManager;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 43
    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-object v1, p2

    .line 48
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 49
    .line 50
    iput-object p2, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 51
    .line 52
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    iput-object p3, p0, Lcom/android/server/soundtrigger/PhoneCallStateHandler;->mCallback:Lcom/android/server/soundtrigger/DeviceStateHandler;

    .line 56
    .line 57
    new-instance p2, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;

    .line 58
    .line 59
    invoke-direct {p2, p0}, Lcom/android/server/soundtrigger/PhoneCallStateHandler$1;-><init>(Lcom/android/server/soundtrigger/PhoneCallStateHandler;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v0, p2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static isCallOngoingFromState(I)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v1, "Received unexpected call state from Telephony Manager: "

    .line 13
    .line 14
    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method
