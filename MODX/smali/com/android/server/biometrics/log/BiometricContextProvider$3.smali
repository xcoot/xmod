.class public final Lcom/android/server/biometrics/log/BiometricContextProvider$3;
.super Lcom/android/internal/statusbar/ISessionListener$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 3
    invoke-direct {p0}, Lcom/android/internal/statusbar/ISessionListener$Stub;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 3
    const-string v1, "BiometricContextProvider"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    const-string/jumbo v2, "onSessionEnded: "

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", "

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 35
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 47
    check-cast p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 49
    if-eqz p0, :cond_1

    .line 51
    if-eqz p2, :cond_1

    .line 53
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;->mId:Lcom/android/internal/logging/InstanceId;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 58
    move-result p0

    .line 59
    invoke-virtual {p2}, Lcom/android/internal/logging/InstanceId;->getId()I

    .line 62
    move-result p1

    .line 63
    if-eq p0, p1, :cond_1

    .line 65
    const-string/jumbo p0, "session id mismatch"

    .line 68
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return-void
.end method

.method public final onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string/jumbo v1, "onSessionStarted: "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "BiometricContextProvider"

    .line 30
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$3;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 35
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSession:Ljava/util/Map;

    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object p1

    .line 41
    new-instance v0, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;

    .line 43
    invoke-direct {v0, p2}, Lcom/android/server/biometrics/log/BiometricContextSessionInfo;-><init>(Lcom/android/internal/logging/InstanceId;)V

    .line 46
    check-cast p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
