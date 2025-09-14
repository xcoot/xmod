.class public final Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCanUserAuthenticate:Ljava/util/Map;

.field public final mClock:Ljava/time/Clock;


# direct methods
.method public constructor <init>(Ljava/time/Clock;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 11
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    .line 13
    return-void
.end method


# virtual methods
.method public final clearPermanentLockOut(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    const/16 p1, 0xfff

    .line 7
    const/16 v0, 0xff

    .line 9
    const/16 v1, 0xf

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq p2, v1, :cond_0

    .line 14
    if-eq p2, v0, :cond_1

    .line 16
    if-eq p2, p1, :cond_2

    .line 18
    const-string/jumbo p0, "increaseLockoutTime called for invalid strength : "

    .line 21
    const-string p1, "MultiBiometricLockoutState"

    .line 23
    invoke-static {p2, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 37
    iput-boolean v2, p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 49
    iput-boolean v2, p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 51
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 61
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 63
    return-void
.end method

.method public final clearTimedLockout(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    const/16 p1, 0xfff

    .line 7
    const/16 v0, 0xff

    .line 9
    const/16 v1, 0xf

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eq p2, v1, :cond_0

    .line 14
    if-eq p2, v0, :cond_1

    .line 16
    if-eq p2, p1, :cond_2

    .line 18
    const-string/jumbo p0, "increaseLockoutTime called for invalid strength : "

    .line 21
    const-string p1, "MultiBiometricLockoutState"

    .line 23
    invoke-static {p2, p0, p1}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 27
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p2

    .line 31
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 37
    iput-boolean v2, p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 39
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 49
    iput-boolean v2, p2, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 51
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 59
    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 61
    iput-boolean v2, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 63
    return-void
.end method

.method public final getAuthMapForUser(I)Ljava/util/Map;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    check-cast v0, Ljava/util/HashMap;

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 26
    const/16 v3, 0xf

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    move-result-object v3

    .line 32
    new-instance v4, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 34
    invoke-direct {v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/16 v3, 0xff

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v3

    .line 46
    new-instance v4, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 48
    invoke-direct {v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;)V

    .line 51
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const/16 v3, 0xfff

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v3

    .line 60
    new-instance v4, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 62
    invoke-direct {v4, v3}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;-><init>(Ljava/lang/Integer;)V

    .line 65
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    check-cast v0, Ljava/util/HashMap;

    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    check-cast p0, Ljava/util/HashMap;

    .line 81
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 85
    check-cast p0, Ljava/util/Map;

    .line 87
    return-object p0
.end method

.method public final getLockoutState(II)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->getAuthMapForUser(I)Ljava/util/Map;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    move-result p1

    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string p0, "Error, getLockoutState for unknown strength: "

    .line 18
    const-string p1, " returning LOCKOUT_NONE"

    .line 20
    const-string v1, "MultiBiometricLockoutState"

    .line 22
    invoke-static {p2, p0, p1, v1}, Lcom/android/server/FileDescriptorWatcher$FileDescriptorLeakWatcher$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return v0

    .line 26
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p1

    .line 30
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 34
    check-cast p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;

    .line 36
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mPermanentlyLockedOut:Z

    .line 38
    if-eqz p1, :cond_1

    .line 40
    const/4 p0, 0x2

    .line 41
    return p0

    .line 42
    :cond_1
    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$AuthenticatorState;->mTimedLockout:Z

    .line 44
    if-eqz p0, :cond_2

    .line 46
    const/4 p0, 0x1

    .line 47
    return p0

    .line 48
    :cond_2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mClock:Ljava/time/Clock;

    .line 3
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 6
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState;->mCanUserAuthenticate:Ljava/util/Map;

    .line 8
    check-cast p0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    const-string v0, "Permanent Lockouts\n"

    .line 20
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v2

    .line 42
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Ljava/util/Map;

    .line 48
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Lcom/android/server/biometrics/sensors/MultiBiometricLockoutState$$ExternalSyntheticLambda0;

    .line 58
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 64
    move-result-object v1

    .line 65
    const-string v3, ", "

    .line 67
    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    .line 70
    move-result-object v3

    .line 71
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Ljava/lang/String;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v0, "UserId="

    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    const-string v0, ", {"

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string/jumbo v0, "}\n"

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    return-object v0
.end method
