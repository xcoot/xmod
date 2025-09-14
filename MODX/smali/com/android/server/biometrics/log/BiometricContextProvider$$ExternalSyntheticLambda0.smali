.class public final synthetic Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    .line 3
    iget-object v0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider;->mSubscribers:Ljava/util/Map;

    .line 5
    new-instance v1, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/server/biometrics/log/BiometricContextProvider$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V

    .line 10
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 15
    return-void
.end method
